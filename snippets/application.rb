require 'ruble'

with_defaults :scope => 'source' do
	
	snippet_category "application" do |category|
	  category.icon_path = "icons/yii.png"
	end

	#createUrl
	snippet "Create Url" do |snip|
		snip.trigger = "url"
		snip.expansion = "Yii::app()->createUrl('${1:route}', array('${2:params}'))"
		snip.category = "application"
		snip.category = "Creates an Application Url"
		snip.icon_path = "icons/icons.png"
	end
	
	#createUrl
  snippet "Base Url" do |snip|
    snip.trigger = "baseurl"
    snip.expansion = "Yii::app()->baseUrl"
  end

	snippet "Application Params" do |snip|
		snip.trigger = "params"
		snip.expansion = "Yii::app()->params['${1:route}']"
	end

	snippet "Request" do |snip|
		snip.trigger = "get"
		snip.expansion = "Yii::app()->request->getParam('${1:route}', '${1:default}')"
	end
	
	snippet "Application" do |snip|
    snip.trigger = "app"
    snip.expansion = "Yii::app()->${}"
  end

	snippet "Request Post" do |snip|
		snip.trigger = "get"
		snip.expansion = "Yii::app()->request->getPost('${1:route}', '${1:default}')"
	end

	snippet "Request Query" do |snip|
		snip.trigger = "get"
		snip.expansion = "Yii::app()->request->getQuery('${1:route}', '${1:default}')"
	end

	#CDbCriteria
	snippet 'Begin Transaction' do |snip|
		snip.trigger ='transaction'
		snip.expansion = '\$transaction = Yii::app()->db->beginTransaction();
try{
	${1://TODO}
	\$transaction->commit();
}catch(Exception \$e){
	\$transaction->rollback();
	Yii::app()->handleException(\$e);
}
'
	end
	
	snippet 'Yii User' do |s|
	  s.trigger = 'yiiuser'
	  s.expansion = "Yii::app()->user${1}"
	end
	
	snippet 'Set Flash Message' do |s|
	  s.trigger = 'yf'
	  s.expansion = "Yii::app()->user->setFlash('${1:key}', Yii::t('${2:app}', '${3:message}'));"
	end
	
	snippet 'Get Flash Message' do |s|
	  s.trigger = 'yf'
	  s.expansion = "Yii::app()->user->getFlash('${1:key}')"
	end
	
	snippet 'Translate' do |s|
	  s.trigger = 'yiit'
	  s.expansion = "Yii::t('${1:app}', '${2:message}')"
	end
	
	snippet 'Application Log' do |s|
    s.trigger = 'log'
    s.expansion = "Yii::log(${1:msg},CLogger::LEVEL_${2:INFO}, '${3:application}')"
  end
end