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
		if(!method_exists($this,$action))
		$action = "index";
		$this->$action();
		exit;
	}

	private function add()
	{
		if($this->ev->get('addcategory'))
		{
			$args = $this->ev->get('args');
			$page = $this->ev->get('page');
			$this->category->addCategory($args);
			if($args['catparent'])
			{
				$parent = $this->category->getCategoryById($args['catparent']);
				$parent = intval($parent['catparent']);
			}
			else $parent = 0;
			$message = array(
				'statusCode' => 200,
				"message" => "操作成功",
			    "target" => "",
			    "rel" => "",
			    "callbackType" => "forward",
			    "forwardUrl" => "index.php?content-master-category&parent={$parent}&page={$page}"
			);
			exit(json_encode($message));
		}
		else
		{
			$parent = $this->ev->get('parent');
			$tpls = array();
			foreach(glob("app/content/tpls/app/category_*.tpl") as $p)
			{
				$tpls[] = substr(basename($p),0,-4);
			}
			$this->tpl->assign('parent',$parent);
			$this->tpl->assign('tpls',$tpls);
			$this->tpl->display('category_add');
		}
	}

	private function lite()
	{
		$ids = $this->ev->get('ids');
		foreach($ids as $key => $p)
		{
			$args = array('catlite' => $p);
			$this->category->modifyCategory($key,$args);
		}
		$message = array(
			'statusCode' => 200,
			"message" => "操作成功",
		    "callbackType" => "forward",
		    "forwardUrl" => "reload"
		);
		\PHPEMS\ginkgo::R($message);
	}

	private function ajax()
	{
		switch($this->ev->url(4))
		{
			case 'getchildcategory':
			$catid = $this->ev->get('catid');
			$out = '';
			if($catid)
			{
				$child = $this->category->getCategoriesByArgs(array(array("AND","catparent = :catparent",':catparent',$catid)));
				foreach($child as $c)
				{
					$out .= '<option value="'.$c['catid'].'">'.$c['catname'].'</option>';
				}
			}
			if($out)
			{
				$message = array(
					'statusCode' => 200,
				    "html" => $out
				);
				exit(json_encode($message));
			}
			else
			{
				$message = array(
					'statusCode' => 300
				);
				exit(json_encode($message));
			}
			break;

			case 'getchilddata':
			$catid = $this->ev->get('catid');
			$child = $this->category->getCategoriesByArgs(array(array("AND","catparent = :catparent",':catparent',$catid)));
			exit(json_encode($child));
			$this->tpl->assign('child',$child);
			$this->tpl->assign('catid',$catid);
			$this->tpl->display('category_ajax_data');
			break;

			default:
			break;
		}
	}

	private function edit()
	{
		$parent = $this->ev->get('parent');
		$catid = $this->ev->get('catid');
		$page = $this->ev->get('page');
		if($this->ev->get('submit'))
		{
			$args = $this->ev->get('args');
			$cat = $this->category->getCategoryById($catid);
			$this->category->modifyCategory($catid,$args);
			$message = array(
				'statusCode' => 200,
				"message" => "操作成功",
			    "callbackType" => "forward",
			    "forwardUrl" => "index.php?content-master-category&parent={$cat['catparent']}&page={$page}"
			);
			exit(json_encode($message));
		}
		else
		{
			$category = $this->category->getCategoryById($catid);
			$tpls = array();
			foreach(glob("app/content/tpls/app/category_*.tpl") as $p)
			{
				$tpls[] = substr(basename($p),0,-4);
			}
			$this->tpl->assign('tpls',$tpls);
			$this->tpl->assign('parent',$parent);
			$this->tpl->assign('category',$category);
			$this->tpl->assign('catid',$catid);
			$this->tpl->assign('page',$page);
			$this->tpl->display('category_edit');
		}
	}

	private function del()
	{
		$catid = $this->ev->get('catid');
		$page = $this->ev->get('page');
		$cat = $this->category->getCategoryById($catid);
		$catstring = $this->category->getChildCategoryString($catid,0);
		$contents = $this->content->getContentList(array(array("AND","contentcatid = :contentcatid",'contentcatid',$catid)));
		if($catstring || $contents['number'])
		{
			$message = array(
				'statusCode' => 300,
				"message" => "操作失败，请先删除该分类下所有子分类和内容"
			);
			exit(json_encode($message));
		}
		$this->category->delCategory($catid);
		$message = array(
			'statusCode' => 200,
			"message" => "操作成功",
		    "target" => "",
		    "rel" => "",
		    "callbackType" => "forward",
		    "forwardUrl" => "index.php?content-master-category&parent={$cat['catparent']}&page={$page}"
		);
		exit(json_encode($message));
	}

	private function index()
	{
		$page = intval($this->ev->get('page'));
		$page = $page?$page:1;
		$parent = intval($this->ev->get('parent'));
		$categorys = $this->category->getCategoryList(array(array("AND","catparent = :catparent",'catparent',$parent)),$page,5);
		$categories = $this->category->getAllCategory();
		$this->tpl->assign('parent',$parent);
		$this->tpl->assign('categorys',$categorys);
		$this->tpl->assign('categories',$categories);
		$this->tpl->assign('page',$page);
		$this->tpl->display('category');
	}
}


?>
