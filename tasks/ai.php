<?php
namespace PHPEMS;
use Phpml\FeatureExtraction\TokenCountVectorizer;
use Phpml\Tokenization\WordTokenizer;
use Phpml\Classification\SVC;
use Phpml\ModelManager; //保存模型
/*
 * Created on 2013-12-26
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
//if(php_sapi_name() != 'cli')exit('Access denied!');
set_time_limit(0);
define('PEPATH',dirname(dirname(__FILE__)));
class app
{
	public $G;

	public function __construct()
	{		
		$this->ev = \PHPEMS\ginkgo::make('ev');
        $this->db = ginkgo::make('pepdo');
	}

	public function run()
	{
        $page = 61;
        $vectorizer = new TokenCountVectorizer(new WordTokenizer());
        $modelManager = new ModelManager(); //创建保存实例
        while($page < 2735)
        {
            if($page < 2)$classifier = new SVC();
            else $classifier = $modelManager->restoreFromFile(PEPATH.'/ml/model/model.pkl');
            $data = array(
                'table' => 'faq',
                'query' => array(),
                'orderby' => 'faqid asc'
            );
            $datas = $this->db->listElements($page,100,$data);
            $page++;
            $questions = array();
            $answers = array();
            foreach($datas['data'] as $d)
            {
                $questions[] = strip_tags(html_entity_decode($d['faqask']));
                $answers[] = strip_tags(html_entity_decode($d['faqanswer']));
            }
            $vectorizer->fit($questions); // 训练特征提取器
            $vectorizer->transform($questions); // 原地转换特征向量
            $X = $questions;
            $y = $answers;
            $classifier->train($X, $y);
            $modelManager->saveToFile($classifier, PEPATH.'/ml/model/bgmodel.pkl');
            echo "{$page} ok\n";
        }
        echo "finish!";
	}
}

include PEPATH.'/lib/init.cls.php';
ginkgo::loadMoudle();
$app = new app();
$app->run();

?>