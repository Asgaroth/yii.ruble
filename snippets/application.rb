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
end