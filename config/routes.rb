Rails.application.routes.draw do

  get("/", {:controller => "posts", :action => "home"})
  # Routes for the Location resource:

  # CREATE
  post("/insert_location", { :controller => "locations", :action => "create" })
          
  # READ
  get("/locations", { :controller => "locations", :action => "index" })
  
  get("/locations/:path_id", { :controller => "locations", :action => "show" })
  
  # UPDATE
  
  #post("/modify_location/:path_id", { :controller => "locations", :action => "update" })
  
  # DELETE
  #get("/delete_location/:path_id", { :controller => "locations", :action => "destroy" })

  #------------------------------

  # Routes for the Post resource:

  # CREATE
  #post("/insert_post", { :controller => "posts", :action => "create" })
          
  # READ


  get("/posts", {:controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  #post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  #get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  # Routes for the Activity resource:

  # CREATE
  #post("/insert_activity", { :controller => "activities", :action => "create" })
          
  # READ
  #get("/activities", { :controller => "activities", :action => "index" })
  
  get("/activities/:path_id", { :controller => "activities", :action => "show" })
  
  # UPDATE
  
  #post("/modify_activity/:path_id", { :controller => "activities", :action => "update" })
  
  # DELETE
  #get("/delete_activity/:path_id", { :controller => "activities", :action => "destroy" })

  #------------------------------

end
