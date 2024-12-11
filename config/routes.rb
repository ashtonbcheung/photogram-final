Rails.application.routes.draw do
  
  get("/", { :controller => "users", :action => "index"})

  # Routes for Like
  post("/insert_like", { :controller => "likes", :action => "create" })      
  get("/likes", { :controller => "likes", :action => "index" })
  get("/likes/:path_id", { :controller => "likes", :action => "show" })
  post("/modify_like/:path_id", { :controller => "likes", :action => "update" })
  get("/delete_like/:path_id", { :controller => "likes", :action => "destroy" })

  # Routes for Follow request
  post("/insert_follow_request", { :controller => "follow_requests", :action => "create" })
  get("/follow_requests", { :controller => "follow_requests", :action => "index" })
  get("/follow_requests/:path_id", { :controller => "follow_requests", :action => "show" })
  post("/modify_follow_request/:path_id", { :controller => "follow_requests", :action => "update" })
  get("/delete_follow_request/:path_id", { :controller => "follow_requests", :action => "destroy" })

  # Routes for Comment
  post("/insert_comment", { :controller => "comments", :action => "create" })
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  # Routes for Photo
  post("/insert_photo", { :controller => "photos", :action => "create" })
  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  post("/modify_photo/:path_id", { :controller => "photos", :action => "update" })
  get("/delete_photo/:path_id", { :controller => "photos", :action => "destroy" })

  # Routes for User

  get("/users/sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })      
  get("/users/edit", { :controller => "user_authentication", :action => "edit_profile_form" })       
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })
  get("/users/sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })     
  get("/users/sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  # Users routes
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_id", { :controller => "users", :action => "show"})
  
end
