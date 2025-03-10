<?php
 namespace PHPEMS;
/*
 * Created on 2016-5-19
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
class action extends app
{
	public function display()
	{
		$action = $this->ev->url(3);
		$this->coupon = \PHPEMS\ginkgo::make('coupon','bank');
		if(!method_exists($this,$action))
		$action = "index";
		$this->$action();
		exit;
	}

	private function outcoupon()
	{
		if($this->ev->get('outcoupon'))
		{
			$stime = strtotime($this->ev->get('stime'));
			$etime = strtotime($this->ev->get('etime'));
			if($stime < $etime)
			{
				$fname = 'data/coupon/'.$stime.'-'.$etime.'-coupon.csv';
				$r = $this->coupon->getAllOKCoupon($stime,$etime);
				if($this->files->outCsv($fname,$r))
				$message = array(
					'statusCode' => 200,
					"message" => "优惠券导出成功，转入下载页面，如果浏览器没有相应，请<a href=\"{$fname}\">点此下载</a>",
				    "callbackType" => 'forward',
				    "forwardUrl" => "{$fname}"
				);
				else
				$message = array(
					'statusCode' => 300,
					"message" => "优惠券导出失败"
				);
			}
			else
			$message = array(
				'statusCode' => 300,
				"message" => "请选择正确的起止时间"
			);
			exit(json_encode($message));
		}
		else
		{
			$this->tpl->display('outcoupon');
		}
	}

	private function clearouttime()
	{
		$this->coupon->clearOutTimeCoupon();
		$message = array(
			'statusCode' => 200,
			"message" => "优惠券清理成功",
		    "callbackType" => 'forward',
		    "forwardUrl" => "reload"
		);
		\PHPEMS\ginkgo::R($message);
	}

	private function batadd()
	{
		if($this->ev->get('addcoupon'))
		{
			$number = $this->ev->get('createnumber');
			$value = $this->ev->get('couponvalue');
			if($number > 0)
			{
				if($number > 99 )$number = 99;
				if($value < 10)$value = 10;
				if($value > 9999)$value = 9999;
				for($i = 0;$i<$number;$i++)
				{
					$this->coupon->randCoupon($value);
				}
				$message = array(
					'statusCode' => 200,
					"message" => "优惠券生成成功",
				    "callbackType" => 'forward',
				    "forwardUrl" => "index.php?bank-master-coupon"
				);
			}
			else
			$message = array(
				'statusCode' => 300,
				"message" => "代金券生成失败"
			);
			exit(json_encode($message));
		}
		else
		{
			$this->tpl->display('addcoupon');
		}
	}

	private function index()
	{
		$search = $this->ev->get('search');
		$page = intval($this->ev->get('page'));
		$u = '';
		if($search)
		{
			$this->tpl->assign('search',$search);
			foreach($search as $key => $arg)
			{
				$u .= "&search[{$key}]={$arg}";
			}
		}
		$this->tpl->assign('u',$u);
		$this->tpl->assign('page',$page);
		if($search)
		{
			$args = array();
		}
		else
		$args = 1;
		$coupons = $this->coupon->getCouponList($args,$page);
		$this->tpl->assign('coupons',$coupons);
		$this->tpl->display('coupon');
	}
}


?>
