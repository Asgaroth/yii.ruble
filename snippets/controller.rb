with_defaults :scope => 'source' do 
  #Controller:Render
  snippet 'Controller:Render' do |snip|
    snip.trigger = 'render' 
    snip.expansion = '\$this->render(\'${1:view}\');'
  end
  
   snippet 'Render Partial' do |snip|
    snip.trigger = 'render' 
    snip.expansion = '\$this->renderPartial(\'${1:view}\');'
  end
  
  #Controller:Render with var
  snippet 'Controller:Render with var' do |snip|
    snip.trigger = 'render'
    snip.expansion = '\$this->render(\'${1:view}\', compact(\'${2:var}\'${});'
  end
  
  #Controller:Action
  #Fast add a action in controller.
  snippet 'Controller:Action' do |snip|
    snip.trigger = 'action'
    snip.expansion = '
public function action${1:Name}()
{
   \$this->render(\'${2:view}\');
}    
'
  end
  
  #CDbCriteria
  snippet 'New Criteria' do |snip|
    snip.trigger ='criteria'
    snip.expansion = '\$criteria = new CDbCriteria;
\$criteria->condition = \'${1://query condition}\';
\$criteria->order = \'${2://order by}\';
\$criteria->limit = \'${3://limit}\';
'
  end
end