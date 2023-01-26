class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id id
    traverse id #, "breadth"
  end

  private

  def traverse id, method="depth"
    node_list = [ @root ]

    while !node_list.empty?
      if :method == "depth"
        current_node = node_list.pop
      else
        current_node = node_list.shift
      end
      return current_node if current_node[:id] == id
      
      node_list = node_list + current_node[:children]
    end

    nil
  end

end