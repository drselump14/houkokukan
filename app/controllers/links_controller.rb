class LinksController < ApplicationController
  def index
    start = params[:start]
    finish = params[:finish]

    # return shortest path
    shortest_path = Path.new(start, finish).shortest_path

    length = shortest_path.last

    # convert node to coordinate
    coordinate = Node.convert_from_node_id_to_coordinate(shortest_path.first)
  end
end
