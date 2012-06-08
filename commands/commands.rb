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
# Use Commands > Bundle Development > Insert Bundle Section > Command
# to easily add new commands
