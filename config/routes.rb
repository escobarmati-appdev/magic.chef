Rails.application.routes.draw do

  get("/", { :controller => "recipes", :action => "index" })

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # # EDIT PROFILE FORM        
  # get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # # UPDATE RECORD
  # post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # # DELETE RECORD
  # get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the Recipe resource:

  # CREATE
  post("/insert_recipe", { :controller => "recipes", :action => "create" })
          
  # READ
  get("/recipes", { :controller => "recipes", :action => "index" })
  
  get("/recipes/:path_id", { :controller => "recipes", :action => "show" })

  get("/myrecipes", { :controller => "recipes", :action => "myrecipes" })
  
  # # UPDATE
  
  # post("/modify_recipe/:path_id", { :controller => "recipes", :action => "update" })
  
  # DELETE
  get("/delete_recipe/:path_id", { :controller => "recipes", :action => "destroy" })

  #------------------------------

  # Routes for the Message resource:

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })
          
  # # READ
  get("/messages", { :controller => "messages", :action => "index" })
  
  # get("/messages/:path_id", { :controller => "messages", :action => "show" })
  
  # # UPDATE
  
  # post("/modify_message/:path_id", { :controller => "messages", :action => "update" })
  
  # # DELETE
  # get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

end
