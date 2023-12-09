Rails.application.routes.draw do

  get("/", {:controller => "users", :action => "home"})

  get("/users", {:controller => "users", :action => "index"})
  post("/add_new_user", {:controller => "users", :action => "add"})
  get("users/:username", {:controller => "users", :action =>"show"})
  post("/update_user_details/:old_username", {:controller => "users", :action => "modify"})

  get("/photos", {:controller => "photos", :action => "index"})
  post("/add_new_photo", {:controller => "photos", :action => "add"})
  get("/photos/:photo_id", {:controller=> "photos", :action => "show"})
  post("/update_photo/:photo_id", {:controller => "photos", :action =>"modify"})
  get("/delete_photo/:photo_id", {:controller => "photos", :action => "delete"})

  post("/add_new_comment", {:controller => "comments", :action => "add"})

end
