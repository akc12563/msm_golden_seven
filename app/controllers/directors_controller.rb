class DirectorsController <ApplicationController

  def index
    @all_directors=Director.all
render ("directors/index.html.erb")
  end

  def show
    p=Director.find(params["id"])
    @name=p.name
    @bio=p.bio
    @dob=p.dob
    @id=p.id
    @pic=p.image_url
  render("directors/show.html.erb")
end

def edit_form
@dir_edit = Director.find(params["id"])
render("directors/edit_form.html.erb")

end

def update_director
  @dirkey = Director.find(params["id"])
  p=Director.find(params["id"])
  p.image_url= params["image_url"]
  p.name=params["name"]
  p.bio=params["bio"]
  p.dob=params["dob"]
  p.save

  redirect_to ("/directors/#{params[:id]}")
end

def destroy
  p=Director.find(params[:id])
  p.destroy
  p.save

  redirect_to("/directors")
end

def new_form
render("directors/new_form.html.erb")
end

def create_row
  p=Director.new
  p.image_url= params["image_url"]
  p.name=params["name"]
  p.bio=params["bio"]
  p.dob=params["dob"]
  p.save

  redirect_to("/directors")

end

end
