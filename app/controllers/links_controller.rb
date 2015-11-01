class LinksController < ApplicationController
  def index
    case params[:mode]
    when 'place_name'
      start = Place.find_by(name: params[:start]).node_id
      finish = Place.find_by(name: params[:finish]).node_id
    end

    # return shortest path
    shortest_path = Path.new(start, finish, params).shortest_path

    # convert node to coordinate
    coordinate = Node.convert_from_node_id_to_coordinate(shortest_path.first)
    respond_to do |format|
      format.json { render json: coordinate }
    end
  end
end
