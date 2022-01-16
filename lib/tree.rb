class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    tree = [@root]
    while tree.count > 0
      node = tree[0]
      return node if node[:id] == id
      tree += node[:children]
      tree.shift
    end
    nil
  end
end