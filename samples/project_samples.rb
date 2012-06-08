require 'ruble'

project_sample "Yii Base Project" do |s|
    s.id = "yii.base"
    s.category = "com.aptana.projects.samples.web.category"
    s.location = "samples/local_sample.zip"
    s.description = "Base Preconfigured Yii Project"
    s.natures = ["com.aptana.projects.webnature", "com.aptana.editor.php.phpNature"]
    #s.icon = ["samples/yii.png"]
end