require 'ruble'

with_defaults :scope => 'source' do
	
	#createUrl
	snippet "Create Url" do |snip|
		snip.trigger = "url"
		snip.expansion = "Yii::app()->createUrl('${1:route}', array('${2:params}'))"
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
end