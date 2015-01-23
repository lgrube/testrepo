=begin
Luke Grube
ruby tree
10/1/2014
=end

class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
  {'grandpa' =>{'dad' => {'child 1' => {}, 'child 2'=> {}}, 'uncle' => {'child 3  ' =>{}, 'child 4' => {}}}}

   @children = children
   @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

