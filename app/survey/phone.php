<?php
namespace PHPEMS;
class app
{
	public $G;

	public function __construct()
	{
		
		$this->ev = \PHPEMS\ginkgo::make('ev');
		$this->tpl = \PHPEMS\ginkgo::make('tpl');
		$this->session = \PHPEMS\ginkgo::make('session');
		$this->category = \PHPEMS\ginkgo::make('category');
		$this->user = \PHPEMS\ginkgo::make('user','user');
		$this->_user = $_user = $this->session->getSessionUser();
        if(!$this->_user['sessionuserid'])
        {
            $message = array(
                'statusCode' => 301,
                "message" => "请您重新登陆",
                "callbackType" => 'forward',
                "forwardUrl" => "index.php?user-phone-login"
            );
            ginkgo::R($message);
        }
		$this->tpl->assign('_user',$this->user->getUserById($this->_user['sessionuserid']));
		$this->tpl->assign('userhash',$this->ev->get('userhash'));
        $this->survey = \PHPEMS\ginkgo::make('survey','survey');
        $this->config = \PHPEMS\ginkgo::make('config','survey');
        $this->tpl->assign('selectors',$this->config->selectors);
	}
}

?>