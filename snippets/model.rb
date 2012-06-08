require 'ruble'

with_defaults :scope => 'source' do
	
	snippet "Find" do |snip|
		snip.trigger = "find"
		snip.expansion = '${1:Model}::model()->find(${})'
	end
	
	snippet "Find By Primary Key" do |snip|
		snip.trigger = "findpk"
		snip.expansion = '${1:Model}::model()->findByPk(\$${2:id})'
	end

	snippet 'Find All' do |s|
	  s.trigger = 'findall'
	  s.expansion = '${1:Model}::model()->findAll(${})'
	end	

	snippet 'Find All By Attributes' do |s|
	  s.trigger = 'findall'
	  s.expansion = '${1:Model}::model()->findAllByAttributes(array("${2:key}" => "${3:value}"${}))'
	end
	
end