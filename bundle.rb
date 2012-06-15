require 'ruble'

bundle do |bundle|
	bundle.display_name = 'Yii'
	bundle.author = 'Asgaroth Belem'
	bundle.repository = "git@github.com:Asgaroth/yii.ruble.git"
	bundle.description = <<END
Sample description
END

	# uncomment with the url to the git repo if one exists
	# bundle.repository = 'git@github.com:username/repo-name.git'

	# Use Commands > Bundle Development > Insert Bundle Section > Menu
	# to easily add new sections
	bundle.menu 'Yii' do |menu|
		menu.command 'Class API'
		menu.menu 'Controller' do |sub_menu|
			sub_menu.command 'Controller:Render'
			sub_menu.command 'Controller:Render with var'
			sub_menu.command 'Controller:Action'
			sub_menu.command 'Open View'
			sub_menu.separator
			sub_menu.command 'New Criteria'
			sub_menu.command 'Add a Criteria setting'
		end
		menu.separator
		menu.command 'Create Url'
		menu.command 'Base Url'
		menu.command 'Render Partial'
		menu.menu 'Application' do |sub_menu|
  		sub_menu.command 'Begin Transaction'
		end
	end
end