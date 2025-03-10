{x2;if:!$userhash}
{x2;include:header}
<body>
<div class="pages">
    {x2;endif}
	<div class="page-tabs">
		<div class="page-header">
			<div class="col-1"><span class="fa fa-chevron-left"></span></div>
			<div class="col-8">{x2;$sessionvars['examsession']}</div>
			<div class="col-1"><span class="fa fa-menu hide"></span></div>
		</div>
		<div class="page-content header footer" style="height: 100%;overflow: hidden" data-callback="outexam" data-nocache="yes">
			<form method="post" action="index.php?exam-phone-exercise-score" class="list-box bg" style="height: 100%;" id="exampaper">
				<input type="hidden" name="insertscore" value="1"/>
				<input type="hidden" name="token" value="{x2;$token}"/>
				<input type="hidden" name="sessionid" value="{x2;$sessionvars['examsessionid']}"/>
				<div class="swiper-container">
					<div class="swiper-wrapper">
                        {x2;eval: v:oid = 0}
                        {x2;eval: v:qcid = 0}
                        {x2;tree:$questype,quest,qid}
                        {x2;if:v:quest}
                        {x2;eval: v:quest = v:quest['questid']}
                        {x2;if:$sessionvars['examsessionquestion']['questions'][v:quest] || $sessionvars['examsessionquestion']['questionrows'][v:quest]}
                        {x2;eval: v:oid++}
                        {x2;eval: v:tid = 0}
                        {x2;tree:$sessionvars['examsessionquestion']['questions'][v:quest],question,qnid}
                        {x2;eval: v:tid++}
                        {x2;eval: v:qcid++}
						<div class="swiper-slide" style="overflow-y: scroll">
							<ol>
								<li class="unstyled">
									<h4 class="title">
										第 {x2;v:qcid} 题 【 {x2;$questype[v:quest]['questype']} 】
									</h4>
								</li>
								<li class="unstyled">
									<div class="rows">
										<p>{x2;realhtml:v:question['question']}</p>
									</div>
								</li>
								{x2;if:v:question['questionselect']}
								<li class="unstyled">
									<div class="rows">
										<p>{x2;realhtml:v:question['questionselect']}</p>
									</div>
								</li>
								{x2;endif}
                                {x2;if:$questype[v:quest]['questsort']}
								<li class="unstyled">
									{x2;eval: $data = v:question}
									{x2;include:plugin_editor}
								</li>
                                {x2;else}
								<li class="unstyled">
									<div class="rows">
                                        {x2;if:$questype[v:quest]['questchoice'] == 1 || $questype[v:quest]['questchoice'] == 4}
                                        {x2;tree:$selectorder,so,sid}
                                        {x2;if:v:key == v:question['questionselectnumber']}
                                        {x2;eval: break;}
                                        {x2;endif}
										<label class="inline"><input type="radio" name="question[{x2;v:question['questionid']}]" rel="{x2;v:question['questionid']}" value="{x2;v:so}" {x2;if:v:so == $sessionvars['examsessionuseranswer'][v:question['questionid']]}checked{x2;endif}/><span class="selector">{x2;v:so}</span> </label>
                                        {x2;endtree}
                                        {x2;elseif:$questype[v:quest]['questchoice'] == 5}
										<input type="text" name="question[{x2;v:question['questionid']}]" placeholder="点击此处填写答案" value="{x2;$sessionvars['examsessionuseranswer'][v:question['questionid']]}" rel="{x2;v:question['questionid']}"/>
										<label class="inline pull-right"><button class="btn btn-primary badge finish fill" rel="{x2;v:question['questionid']}">答题完毕</button></label>
                                        {x2;else}
                                        {x2;tree:$selectorder,so,sid}
                                        {x2;if:v:key >= v:question['questionselectnumber']}
                                        {x2;eval: break;}
                                        {x2;endif}
										<label class="inline"><input type="checkbox" name="question[{x2;v:question['questionid']}][{x2;v:key}]" rel="{x2;v:question['questionid']}" value="{x2;v:so}" {x2;if:is_array($sessionvars['examsessionuseranswer'][v:question['questionid']]) &&  in_array(v:so,$sessionvars['examsessionuseranswer'][v:question['questionid']])}checked{x2;endif}/><span class="selector">{x2;v:so}</span> </label>
                                        {x2;endtree}
                                        {x2;endif}
									</div>
								</li>
                                {x2;endif}
							</ol>
						</div>
                        {x2;endtree}
                        {x2;tree:$sessionvars['examsessionquestion']['questionrows'][v:quest],questionrow,qrid}
                        {x2;eval: v:tid++}
                        {x2;tree:v:questionrow['data'],question,qid}
                        {x2;eval: v:qcid++}
						<div class="swiper-slide" style="overflow-y: scroll">
							<ol>
								<li class="unstyled">
									<h4 class="title">
										第 {x2;v:qcid} 题
									</h4>
								</li>
								<li class="unstyled">
									<div class="rows">
										<p>{x2;realhtml:v:questionrow['qrquestion']}</p>
									</div>
								</li>
								<li class="unstyled">
									<div class="rows">
										<p>{x2;realhtml:v:question['question']}</p>
									</div>
								</li>
								<li class="unstyled">
									<div class="rows">
										<p>{x2;realhtml:v:question['questionselect']}</p>
									</div>
								</li>
                                {x2;if:$questype[v:question['questiontype']]['questsort']}
								<li class="unstyled">
									{x2;eval: $data = v:question}
									{x2;include:plugin_editor}
								</li>
                                {x2;else}
								<li class="unstyled">
									<div class="rows">
                                        {x2;if:$questype[v:question['questiontype']]['questchoice'] == 1 || $questype[v:question['questiontype']]['questchoice'] == 4}
                                        {x2;tree:$selectorder,so,sid}
                                        {x2;if:v:key == v:question['questionselectnumber']}
                                        {x2;eval: break;}
                                        {x2;endif}
										<label class="inline"><input type="radio" name="question[{x2;v:question['questionid']}]" rel="{x2;v:question['questionid']}" value="{x2;v:so}" {x2;if:v:so == $sessionvars['examsessionuseranswer'][v:question['questionid']]}checked{x2;endif}/><span class="selector">{x2;v:so}</span> </label>
                                        {x2;endtree}
                                        {x2;elseif:$questype[v:question['questiontype']]['questchoice'] == 5}
										<input type="text" name="question[{x2;v:question['questionid']}]" placeholder="点击此处填写答案" value="{x2;$sessionvars['examsessionuseranswer'][v:question['questionid']]}" rel="{x2;v:question['questionid']}"/>
										<label class="inline pull-right"><button class="btn btn-primary badge finish fill" rel="{x2;v:question['questionid']}">答题完毕</button></label>
                                        {x2;else}
                                        {x2;tree:$selectorder,so,sid}
                                        {x2;if:v:key >= v:question['questionselectnumber']}
                                        {x2;eval: break;}
                                        {x2;endif}
										<label class="inline"><input type="checkbox" name="question[{x2;v:question['questionid']}][{x2;v:key}]" rel="{x2;v:question['questionid']}" value="{x2;v:so}" {x2;if:is_array($sessionvars['examsessionuseranswer'][v:question['questionid']]) &&  in_array(v:so,$sessionvars['examsessionuseranswer'][v:question['questionid']])}checked{x2;endif}/><span class="selector">{x2;v:so}</span> </label>
                                        {x2;endtree}
                                        {x2;endif}
									</div>
								</li>
                                {x2;endif}
							</ol>
						</div>
                        {x2;endtree}
                        {x2;endtree}
                        {x2;endif}
                        {x2;endif}
                        {x2;endtree}
					</div>
				</div>
			</form>
		</div>
		<div class="page-content header footer hide">
			<div class="list-box bg">
				<ol>
                    {x2;eval: v:oid = 0}
                    {x2;eval: v:qmid = 0}
                    {x2;tree:$questype,quest,qid}
                    {x2;if:v:quest}
                    {x2;eval: v:quest = v:quest['questid']}
                    {x2;if:$sessionvars['examsessionquestion']['questions'][v:quest] || $sessionvars['examsessionquestion']['questionrows'][v:quest]}
                    {x2;if:$data['currentbasic']['basicexam']['changesequence']}
                    {x2;eval: shuffle($sessionvars['examsessionquestion']['questions'][v:quest]);}
                    {x2;eval: shuffle($sessionvars['examsessionquestion']['questionrows'][v:quest]);}
                    {x2;endif}
                    {x2;eval: v:oid++}
					<li class="unstyled">
						<div class="rows">
							<h4 class="title text-center">{x2;$questype[v:quest]['questype']}</h4>
                            {x2;eval: v:tid = 0}
                            {x2;tree:$sessionvars['examsessionquestion']['questions'][v:quest],question,qnid}
                            {x2;eval: v:tid++}
                            {x2;eval: v:qmid++}
							<div class="col-2">
								<a data-index="{x2;v:qmid}" data-questionid="{x2;v:question['questionid']}" id="sign_{x2;v:question['questionid']}" class="btn order{x2;if:$sessionvars['examsessionsign'][v:question['questionid']]} danger{x2;endif}">{x2;v:tid}</a>
							</div>
                            {x2;endtree}
                            {x2;tree:$sessionvars['examsessionquestion']['questionrows'][v:quest],questionrow,qrid}
                            {x2;eval: v:tid++}
                            {x2;tree:v:questionrow['data'],question,did}
                            {x2;eval: v:qmid++}
							<div class="col-2">
								<a data-index="{x2;v:qmid}" data-questionid="{x2;v:question['questionid']}" id="sign_{x2;v:question['questionid']}" class="btn order{x2;if:$sessionvars['examsessionsign'][v:question['questionid']]} danger{x2;endif}">{x2;v:tid}-{x2;v:did}</a>
							</div>
                            {x2;endtree}
                            {x2;endtree}
						</div>
					</li>
                    {x2;endif}
                    {x2;endif}
                    {x2;endtree}
				</ol>
			</div>
		</div>
		<div class="page-footer">
			<div class="col-3l">
				<ol class="pagination">
					<li class="col-3x">
						<h2 class="text-center timer">
							<span id="exampaper-timer_h">00</span>:<span id="exampaper-timer_m">00</span>:<span id="exampaper-timer_s">00</span>
						</h2>
					</li>
					<li class="col-3x text-center">
						<button class="subpaperbtn block">交卷</button>
					</li>
				</ol>
			</div>
			<div class="col-2s iconmenu" id="card">
				<span class="fa fa-th"></span><br />题卡
			</div>
			<div class="col-2s iconmenu" id="sign">
				<span class="fa fa-star"></span><br />标记
			</div>
		</div>
	</div>
	<script>
        function outexam(){
            saveanswer();
            pep.mask.show(null,{message:'请先交卷'});
            history.pushState({id:'index.php?exam-phone-exercise-paper'},'{x2;$sessionvars['examsession']}','index.php?exam-phone-exercise-paper&sessionid={x2;$sessionvars['examsessionid']}&token={x2;$token}');
        }
        $(function(){
            $.get('index.php?exam-phone-index-ajax-lefttime&sessionid={x2;$sessionvars['examsessionid']}&rand'+Math.random(),function(data){
                var setting = {
                    time:{x2;$sessionvars['examsessiontime']},
                    hbox:$("#exampaper-timer_h"),
                    mbox:$("#exampaper-timer_m"),
                    sbox:$("#exampaper-timer_s"),
                    finish:function(){
                        $('#exampaper').submit();
                    }
                }
                setting.lefttime = parseInt(data);
				clock = new countdown(setting);
            });
            pep.saveAnswer = setInterval(saveanswer,120000);
            $('.subpaperbtn').on('click',function(){
                pep.mask.show('confirm',{message:'确定要交卷吗？'},function(){
                    $('#exampaper').submit();
                });
            });
            $('#card').on('click',function(){
                $('.page-content').toggleClass('hide');
                $(this).toggleClass('active');
            });
            var mySwiper = new Swiper ('.swiper-container',{
                on:{
                    init:function(){
                        if($('.order:first').hasClass('danger'))
                        {
                            $('#sign').addClass('active');
                        }
                        else
                        {
                            $('#sign').removeClass('active');
                        }
                    },
                    slideChange: function(){
                        if($('.order').eq(this.activeIndex).hasClass('danger'))
                        {
                            $('#sign').addClass('active');
                        }
                        else
                        {
                            $('#sign').removeClass('active');
                        }
                    }
                }
            });
            $('.order').on('click',function(){
                $('.page-content').toggleClass('hide');
                $('#card').toggleClass('active');
                mySwiper.slideTo($(this).attr('data-index')-1);
            });
            $('#sign').on('click',function(){
                var that = this;
                var id = $('.order').eq(mySwiper.activeIndex).attr('data-questionid');
                $.get("index.php?exam-phone-index-ajax-sign&sessionid={x2;$sessionvars['examsessionid']}&questionid="+id+'&'+Math.random(),function(data){
                    if(parseInt(data) == 1){
                        $(that).addClass('active');
                        $('#sign_'+id).addClass('danger');
                    }else{
                        $(that).removeClass('active');
                        $('#sign_'+id).removeClass('danger');
                    }
                });
            });
            try{
                initData = $.parseJSON(storage.getItem('questions'));
                if(!initData)initData = new Object();
                for(k in initData){
                    var v = initData[k];
                    $('#time_'+k).val(v['time']);
                    $(":radio[rel="+k+"]").each(function(){
                        var that = $(this);
                        if(v['value'] == that.val()){
                            that.attr("checked",true);
                        }
                    });
                    $("#exampaper :text[rel="+k+"],#exampaper textarea[rel="+k+"]").each(function(){
                        var that = $(this);
                        that.val(v['value']);
                        if(that.hasClass('jckeditor')){
                            CKEDITOR.instances[that.attr('id')].setData(v['value']);
                        }
						if(that.hasClass("qq-edit-filename-selector"))
						{	
							that.parents(".qq-uploader-selector:first").find("a.btn").addClass("primary").attr("href",v['value']).html("已上传");
						}
                    });
                    $("#exampaper :checkbox[rel="+k+"]").each(function(){
                        var that = $(this);
                        if(v['value'].indexOf(that.val()) >= 0){
                            that.attr("checked",true);
                        }
                    });
                }
            }catch(e){
                //
            }finally {
                markQuestions();
            }
            $('#exampaper :radio').on('click',function(){
                var that = $(this);
                setTimeout(function(){
                    var now = Date.parse(new Date())/1000;
                    $('#time_'+that.attr('rel')).val(now);
                    initData[that.attr('rel')] = {value:that.val(),time:now};
                    markQuestions();
                },100);
            });

            $('#exampaper :checkbox').on('click',function(){
                var that = $(this);
                setTimeout(function(){
                    var now = Date.parse(new Date())/1000;
                    var answer = '';
                    $('#time_'+that.attr('rel')).val(now);
                    that.parents('li').find(':checked').each(function(){
                        answer += $(this).val().toUpperCase();
                    });
                    initData[that.attr('rel')] = {value:answer,time:now};
                    markQuestions();
                },100);
            });

            $('#exampaper :text,#exampaper textarea').on('blur',function(){
                var that = $(this);
                setTimeout(function(){
                    var now = Date.parse(new Date())/1000;
                    $('#time_'+that.attr('rel')).val(now);
                    initData[that.attr('rel')] = {value:that.val(),time:now};
                    markQuestions();
                },100);
            });
        });
	</script>
    {x2;if:!$userhash}
</div>
</body>
</html>
{x2;endif}