class FiguresController < ApplicationController

  get '/figures' do
   @figures = Figure.all
   erb :'/figures/index'
  end

  get '/figures/new' do
    erb :'figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
#   @pets = Pet.all
    erb :'/figures/edit'
  end

  post '/figures' do
    @figures = Figure.create(:name => params["figure"])
      if !params["title"]["name"].empty?
        @figure.title = Title.create(name: params["title"]["name"])
        #if !params["landmark"]["name"].empty? && !params["landmark"]["year_completed"].empty?
        #  @figure.landmark.name = Landmark.create(name: params["landmark"]["name"])
        #  @figure.landmark.year_completed = Landmark.create(year_completed: params["landmark"]["year_completed"])
        #end
      #end
    end

    #@figure.title = Title.find_or_create_by(:name => params["Title Name"])
   #@figure.landmark = params[:landmark]
    @figure.save
    redirect to "/figures/#{@figure.id}"
  end

 patch '/figures/:id' do
   @figure = Figure.find(params[:id])

   ####### the following bug fix is required so that it's possible to remove ALL previous pets from owner.
  # if !params[:owner].keys.include?("pet_ids")
   #params[:owner]["pet_ids"] = []
   #end
   ####### End of fix

  # @owner.update(params["owner"])
   #if !params["pet"]["name"].empty?
    # @owner.pets << Pet.create(name: params["pet"]["name"])
   #end
   redirect "figures/#{@figure.id}"
 end


end
