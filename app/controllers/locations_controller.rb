class LocationsController < ApplicationController
  def index
    matching_locations = Location.all

    @list_of_locations = matching_locations.order({ :created_at => :desc })

    render({ :template => "locations/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_locations = Location.where({ :id => the_id })

    @the_location = matching_locations.at(0)

    render({ :template => "locations/show.html.erb" })
  end

  def create

  input_activity = params.fetch("query_activity_id")
  input_address = params.fetch("query_address")
  input_image = params.fetch("query_image")
  input_website = params.fetch("query_website")
  
  new_location = Location.new
  new_location.activity_id = input_activity
  new_location.address = input_address
  new_location.image = input_image
  new_location.website = input_website



    #the_location = Location.new
    #the_location.activity_id = params.fetch("query_activity_id")
   # the_location.address = params.fetch("query_address")
    #the_location.image = params.fetch("query_image")
   # the_location.website = params.fetch("query_website")

    new_location.save

   next_url = "/locations/"+ new_location.id.to_s
   redirect_to(next_url)
  end

  def update
    the_id = params.fetch("path_id")
    the_location = Location.where({ :id => the_id }).at(0)

    the_location.activity_id = params.fetch("query_activity_id")
    the_location.address = params.fetch("query_address")
    the_location.image = params.fetch("query_image")
    the_location.website = params.fetch("query_website")

    if the_location.valid?
      the_location.save
      redirect_to("/locations/#{the_location.id}", { :notice => "Location updated successfully."} )
    else
      redirect_to("/locations/#{the_location.id}", { :alert => the_location.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_location = Location.where({ :id => the_id }).at(0)

    the_location.destroy

    redirect_to("/locations", { :notice => "Location deleted successfully."} )
  end
end
