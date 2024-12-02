<?php
namespace PHPEMS;
class app
{
	public $G;

	public function __construct()
	{
		$this->ev = \PHPEMS\ginkgo::make('ev');
		$this->tpl = \PHPEMS\ginkgo::make('tpl');
		$this->sql = \PHPEMS\ginkgo::make('sql');
		$this->pdosql = \PHPEMS\ginkgo::make('pdosql');

		$this->db = \PHPEMS\ginkgo::make('pdodb');
		$this->pg = \PHPEMS\ginkgo::make('pg');
		$this->html = \PHPEMS\ginkgo::make('html');
		$this->files = \PHPEMS\ginkgo::make('files');
		$this->session = \PHPEMS\ginkgo::make('session');
		$this->category = \PHPEMS\ginkgo::make('category');
		$this->course = \PHPEMS\ginkgo::make('course','course');
		$this->content = \PHPEMS\ginkgo::make('content','content');
		$this->user = \PHPEMS\ginkgo::make('user','user');
		$this->_user = $_user = $this->session->getSessionUser();
        if(!$this->_user['sessionuserid'])
        {
            $message = array(
                'statusCode' => 301,
                "message" => "请您重新登录",
                "callbackType" => 'forward',
                "forwardUrl" => "index.php?user-phone-login"
            );
            \PHPEMS\ginkgo::R($message);
        }
		$this->tpl->assign('_user',$this->user->getUserById($this->_user['sessionuserid']));
		$rcats = $this->category->getCategoriesByArgs(array(array("AND","catparent = '0'")));
		$this->tpl->assign('rcats',$rcats);
		$this->tpl->assign('userhash',$this->ev->get('userhash'));
	}
}

?>