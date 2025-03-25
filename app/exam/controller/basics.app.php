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
        $this->area = \PHPEMS\ginkgo::make('area','exam');
		$action = $this->ev->url(3);
		if(!method_exists($this,$action))
		$action = "index";
		$this->$action();
		exit;
	}

	private function openit()
	{
		$basicid = $this->ev->get('basicid');
		$basic = $this->basic->getBasicById($basicid);
		if(!$basic)
		{
			$message = array(
				'statusCode' => 300,
				"message" => "操作失败，此考场不存在"
			);
			\PHPEMS\ginkgo::R($message);
		}
		if((!$basic['basicexam']['allowgroup']) || (strpos(','.$basic['basicexam']['allowgroup'].',',",{$this->_user['sessiongroupid']},") !== false))
		$allowopen = 1;
		if(!$allowopen)
		{
			$message = array(
				'statusCode' => 300,
				"message" => "您做所在的用户组不能开通本考场"
			);
			\PHPEMS\ginkgo::R($message);
		}
		$userid = $this->_user['sessionuserid'];
		if($this->basic->getOpenBasicByUseridAndBasicid($userid,$basicid))
		{
			$message = array(
				'statusCode' => 300,
				"message" => "您已经开通了本考场"
			);
		}
		if($basic['basicdemo'])
		{
			$time = 365*24*3600;
		}
		else
		{
			$opentype = intval($this->ev->get('opentype'));
			$price = 0;
			if(trim($basic['basicprice']))
			{
				$price = array();
				$basic['basicprice'] = explode("\n",$basic['basicprice']);
				foreach($basic['basicprice'] as $p)
				{
					if($p)
					{
						$p = explode(":",$p);
						$price[] = array('time'=>intval($p[0]),'price'=>intval($p[1]));
					}
				}
			}
			if(!$price[$opentype])$t = $price[0];
			else
			$t = $price[$opentype];
			$time = $t['time']*24*3600;
			$score = $t['price'];
			$user = $this->user->getUserById($this->_user['sessionuserid']);
			if($user['usercoin'] < $score)
			{
				$message = array(
					'statusCode' => 300,
					"message" => "操作失败，您的积分不够"
				);
				\PHPEMS\ginkgo::R($message);
			}
			else
			{
				$args = array("usercoin" => $user['usercoin'] - $score);
				$this->user->modifyUserInfo($this->_user['sessionuserid'],$args);
                \PHPEMS\ginkgo::make('consume','bank')->addConsumeLog(array('conluserid' => $this->_user['sessionuserid'],'conlcost' => $score,'conltype' => 1,'conltime' => TIME,'conlinfo' => '开通考场'.$basic['basic']."{$t['time']}天"));
            }
		}
		$args = array('obuserid'=>$userid,'obbasicid'=>$basicid,'obendtime'=>TIME + $time);
		$this->basic->openBasic($args);
		$message = array(
			'statusCode' => 200,
			"message" => "操作成功",
			"callbackType" => "forward",
		    "forwardUrl" => "index.php?exam-app"
		);
		\PHPEMS\ginkgo::R($message);
	}

	private function coupon()
	{
		if($this->ev->get('coupon'))
		{
			$couponsn = strtoupper($this->ev->get('couponsn'));
			$r = \PHPEMS\ginkgo::make('coupon','bank')->useCouponById($couponsn,$this->_user['sessionuserid']);
			if(!$r)
			$message = array(
				'statusCode' => 300,
				"message" => "错误的代金券"
			);
			elseif($r == '301')
			$message = array(
				'statusCode' => 300,
				"message" => "使用过的代金券"
			);
			elseif($r == '302')
			$message = array(
				'statusCode' => 300,
				"message" => "过期的代金券"
			);
			else
			$message = array(
				'statusCode' => 200,
				"message" => "充值成功",
				"callbackType" => "forward",
			    "forwardUrl" => "reload"
			);
		}
		else
		$message = array(
			'statusCode' => 300,
			"message" => "操作失败"
		);
		\PHPEMS\ginkgo::R($message);
	}

	private function detail()
	{
		$this->basic->delOpenPassBasic($this->_user['sessionuserid']);
		$this->area = \PHPEMS\ginkgo::make('area','exam');
		$basicid = $this->ev->get('basicid');
		$basic = $this->basic->getBasicById($basicid);
		$areas = $this->area->getAreaList();
		$price = 0;
		if(trim($basic['basicprice']))
		{
			$price = array();
			$basic['basicprice'] = explode("\n",$basic['basicprice']);
			foreach($basic['basicprice'] as $p)
			{
				if($p)
				{
					$p = explode(":",$p);
					$price[] = array('time'=>$p[0],'price'=>$p[1]);
				}
			}
			$this->tpl->assign('price',$price);
		}
		if((!$basic['basicexam']['allowgroup']) || (strpos(','.$basic['basicexam']['allowgroup'].',',",{$this->_user['sessiongroupid']},") !== false))
		$allowopen = 1;
		$isopen = $this->basic->getOpenBasicByUseridAndBasicid($this->_user['sessionuserid'],$basicid);
        $subject = $this->basic->getSubjectById($basic['basicsubjectid']);
        $args = array();
        $args[] = array("AND","basicclosed = 0");
        $basics = $this->basic->getBasicsByArgs($args,5);
        $this->tpl->assign('news',$basics);
        $this->tpl->assign('subject',$subject);
		$this->tpl->assign('isopen',$isopen);
		$this->tpl->assign('areas',$areas);
		$this->tpl->assign('allowopen',$allowopen);
		$this->tpl->assign('basic',$basic);
		$this->tpl->display('basics_detail');
	}

	public function index()
	{
        $page = $this->ev->get('page');
        $search = $this->ev->get('search');
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
        $args = array(array("AND","basicclosed = 0"));
        if($search['basicdemo'])$args[] = array("AND","basicdemo = :basicdemo","basicdemo",$search['basicdemo']);
        if($search['keyword'])$args[] = array("AND","basic LIKE :basic","basic","%{$search['keyword']}%");
        if($search['basicareaid'])$args[] = array("AND","basicareaid = :basicareaid","basicareaid",$search['basicareaid']);
        if($search['basicsubjectid'])$args[] = array("AND","basicsubjectid = :basicsubjectid","basicsubjectid",$search['basicsubjectid']);
        if($search['basicapi'])$args[] = array("AND","basicapi = :basicapi","basicapi",$search['basicapi']);
        $basics = $this->basic->getBasicList($args,$page);
        $areas = $this->area->getAreaList();
        $subjects = $this->subject->getSubjectList();
        $this->tpl->assign('areas',$areas);
        $this->tpl->assign('subjects',$subjects);
        $this->tpl->assign('basics',$basics);
        $this->tpl->display('basics');
	}

	public function openbatbasics()
	{
		$basicids = $this->ev->get('basicids');
		$number = $this->ev->get('number');
		if($number)
		{
			$ids = explode(',',$basicids);
			foreach($ids as $id)
			{
				$this->basic->openBasic($id);
			}
			$message = array(
				'statusCode' => 200,
				"message" => "操作成功",
				"callbackType" => "forward",
				"forwardUrl" => "index.php?exam-master-basic"
			);
		}
		else
		{
			$message = array(
				'statusCode' => 300,
				"message" => "请选择要开通的考场"
			);
		}
		$this->G->R($message);
	}

	public function closebatbasics()
	{
		$basicids = $this->ev->get('basicids');
		$number = $this->ev->get('number');
		if($number)
		{
			$ids = explode(',',$basicids);
			foreach($ids as $id)
			{
				$this->basic->closeBasic($id);
			}
			$message = array(
				'statusCode' => 200,
				"message" => "操作成功",
				"callbackType" => "forward",
				"forwardUrl" => "index.php?exam-master-basic"
			);
		}
		else
		{
			$message = array(
				'statusCode' => 300,
				"message" => "请选择要关闭的考场"
			);
		}
		$this->G->R($message);
	}

	public function getsubjectquestype()
	{
		$subjectid = $this->ev->get('subjectid');
		$subject = $this->subject->getSubjectById($subjectid);
		$r = array();
		if($subject['subjectsetting']['questypes'])
		{
			foreach($subject['subjectsetting']['questypes'] as $key => $p)
			{
				if($p)$r[] = $key;
			}
		}
		exit(json_encode($r));
	}

	public function getbasicmembernumber()
	{
		$basicid = $this->ev->get('basicid');
		$number = $this->basic->getBasicMemberNumber($basicid);
		echo $number;
	}

	public function output()
	{
		$args = array(array("AND","basicclosed = 0"));
		$basics = $this->basic->getBasicsList($args);
		$this->tpl->assign('basics',$basics);
		$this->tpl->display('output');
	}

	public function ajax()
	{
		switch($this->ev->url(4))
		{
			case 'getsubjectknows':
			$subjectid = $this->ev->get('subjectid');
			$basic = $this->basic->getBasicById($this->ev->get('basicid'));
			$subject = $this->subject->getSubjectById($subjectid);
			$r = array();
			$tmp = $subject['subjectsetting']['knowsids'];
			$knowsids = '';
			if(is_array($tmp))
			{
				foreach($tmp as $p)
				{
					if($basic['basicknows'][$tmp])
					$knowsids .= $p.',';
				}
			}
			$knowsids = trim($knowsids,' ,');
			$knows = $this->section->getAllKnowsBySubject($subjectid);
			if(is_array($knows))
			{
				foreach($knows as $p)
				{
					$r[$p['knowsid']] = array('knowsid'=>$p['knowsid'],'knows'=>$p['knows'],'knowssequence'=>$p['knowssequence']);
				}
			}
			exit(json_encode(array('knows'=>$r,'knowsids'=>$knowsids)));
			break;

			case 'getknows':
			$subjectid = $this->ev->get('subjectid');
			$knowsids = $this->ev->get('knowsids');
			$knows = $this->section->getAllKnowsBySubject($subjectid);
			$r = array();
			if(is_array($knows))
			{
				foreach($knows as $p)
				{
					$r[$p['knowsid']] = array('knowsid'=>$p['knowsid'],'knows'=>$p['knows'],'knowssequence'=>$p['knowssequence']);
				}
			}
			exit(json_encode(array('knows'=>$r,'knowsids'=>$knowsids)));
			break;

			case 'getbasicmembernumber':
			$basicid = $this->ev->get('basicid');
			$number = $this->basic->getBasicMemberNumber($basicid);
			echo $number;
			break;

			default:
			break;
		}
	}

	public function batdelbasic()
	{
		$page = $this->ev->get('page');
		$delids = $this->ev->get('delids');
		foreach($delids as $basicid => $p)
		{
			$this->basic->delBasic($basicid);
		}
		$message = array(
			'statusCode' => 200,
			"message" => "操作成功",
			"callbackType" => "forward",
			"forwardUrl" => "index.php?exam-master-basic&page={$page}{$u}"
		);
		$this->G->R($message);
	}

	public function add()
	{
		if($this->ev->get('insertbasic'))
		{
			$args = $this->ev->get('args');
			$args['basicexam']['opentime']['start'] = strtotime($args['basicexam']['opentime']['start']);
			$args['basicexam']['opentime']['end'] = strtotime($args['basicexam']['opentime']['end']);
			$args['basicsection'] = $args['basicknows'];
			$this->basic->addBasic($args);
			$message = array(
				'statusCode' => 200,
				"message" => "操作成功",
				"callbackType" => "forward",
				"forwardUrl" => "index.php?exam-master-basic"
			);
			$this->G->R($message);
		}
		else
		{
			$subjects = $this->subject->getSubjectList();
			$areas = $this->area->getAreaList();
			$this->tpl->assign('areas',$areas);
			$this->tpl->assign('subjects',$subjects);
			$this->tpl->display('basic_add');
		}
	}

	public function modify()
	{
		$basicid = $this->ev->get('basicid');
		$basic = $this->basic->getBasicById($basicid);
		if($this->ev->get('modifybasic'))
		{
			$args = $this->ev->get('args');
			$args['basicexam']['opentime']['start'] = strtotime($args['basicexam']['opentime']['start']);
			$args['basicexam']['opentime']['end'] = strtotime($args['basicexam']['opentime']['end']);
			$args['basicsection'] = $args['basicknows'];
			$this->basic->setBasicConfig($basicid,$args);
			$message = array(
				'statusCode' => 200,
				"message" => "操作成功",
				"callbackType" => "forward",
				"forwardUrl" => "index.php?exam-master-basic&page={$page}{$u}"
			);
			$this->G->R($message);
		}
		else
		{
			$subjects = $this->subject->getSubjectList();
			$areas = $this->area->getAreaList();
			$knows = $this->section->getAllKnowsBySubject($basic['basicsubjectid']);
			$this->tpl->assign('areas',$areas);
			$this->tpl->assign('subjects',$subjects);
			$this->tpl->assign('basic',$basic);
			$this->tpl->assign('knows',$knows);
			$this->tpl->display('basic_modify');
		}
	}

	public function del()
	{
		$basicid = $this->ev->get('basicid');
		$page = $this->ev->get('page');
		$this->basic->delBasic($basicid);
		$message = array(
			'statusCode' => 200,
			"message" => "操作成功",
			"callbackType" => "forward",
			"forwardUrl" => "index.php?exam-master-basic&page={$page}{$u}"
		);
		$this->G->R($message);
	}
}


?>
