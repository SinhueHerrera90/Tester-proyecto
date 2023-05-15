class PostsController < ApplicationController

  def home
    render({ :template =>"posts/homepage.html.erb"})

    end
  def index
    matching_posts = Post.all

    @list_of_posts = matching_posts.order({ :created_at => :desc })

    render({ :template => "posts/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_posts = Post.where({ :id => the_id })

    @the_post = matching_posts.at(0)

    render({ :template => "posts/show.html.erb" })
  end

  def create
    the_post = Post.new
    the_post.activity_id = params.fetch("query_activity_id")
    the_post.description = params.fetch("query_description")
    the_post.location_id = params.fetch("query_location_id")

   
      the_post.save
    next_url = "/posts/" + the_post.id.to_s
    redirect_to(next_url)
  end

  def update
    the_id = params.fetch("path_id")
    the_post = Post.where({ :id => the_id }).at(0)

    the_post.activity_id = params.fetch("query_activity_id")
    the_post.description = params.fetch("query_description")
    the_post.location_id = params.fetch("query_location_id")

    if the_post.valid?
      the_post.save
      redirect_to("/posts/#{the_post.id}", { :notice => "Post updated successfully."} )
    else
      redirect_to("/posts/#{the_post.id}", { :alert => the_post.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_post = Post.where({ :id => the_id }).at(0)

    the_post.destroy

    redirect_to("/posts", { :notice => "Post deleted successfully."} )
  end
end
