Rails.application.routes.draw do
#create
get("/directors/new", {:controller=>"directors", :action=>"new_form"})
get("/create_director", {:controller=>"directors", :action=>"create_row"})

#Read
get("/directors", {:controller=>"directors", :action=>"index"})
get("/directors/:id", {:controller=>"directors", :action=>"show"})

#delete
get("/delete_director/:id", {:controller=>"directors", :action=>"destroy"})

#update
get("/directors/:id/edit_form", {:controller=>"directors", :action=>"edit_form"})
get("/update_director/:id", {:controller=>"directors", :action=>"update_director"})


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
