class Path
  attr_reader :start, :finish, :graph

  # start & finish は ノードID
  def initialize(start, finish, options = {})
    @start = start
    @finish = finish
    links = Link.without_braille_block if options[:without_braille_block]
    @graph = Graph.new( (links || Link.all).to_graph_array )
  end

  # return [ [node_id_1, node_id_2, ...], length ]
  def shortest_path
    graph.shortest_path(start.to_sym, finish.to_sym)
  end
end
