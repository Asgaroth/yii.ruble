require 'ruble'

command 'Class API' do |cmd|
  cmd.key_binding = 'CONTROL+SHIFT+H'
  cmd.scope = 'source'
  cmd.output = :show_as_html
  cmd.input = :selection, :word
  cmd.invoke do |context|
    word = STDIN.read
    url = "http://www.yiiframework.com/doc/api/1.1/" + word
    "<meta http-equiv='Refresh' content='0;URL=#{url}'>"
  end
end

command 'Open View' do |cmd|
  cmd.input = :word
  cmd.output = :discard
  cmd.key_binding = 'CONTROL+E'
  cmd.scope = 'source'
  cmd.invoke do |context|
  	word = STDIN.read
  	work_path = ENV['TM_PROJECT_DIRECTORY'] || ENV['TM_DIRECTORY']
  	controller = ENV['TM_FILEPATH'].split("/")[-1].match(/([a-zA-Z]+)Controller.php$/i)
  	if controller
  		controller = controller[1].downcase
	    Ruble::Editor.open work_path+"/protected/views/"+controller+"/"+word+".php"
	else
		Ruble::UI.alert(:warning, 'Yii Controller?', '
Make sure '+ENV['TM_FILEPATH']+' it\'s a Yii Controller Class, and that you execute the command over the view name', :Ok) # opens an info dialog box with title
  	end
  	nil
  end
end
# Use Commands > Bundle Development > Insert Bundle Section > Command
# to easily add new commands
