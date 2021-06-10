class LandmarksController < ApplicationController
  
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    @landmark = Landmark.create(params[:landmark])

    redirect to "/landmarks/#{@landmark.slug}"
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by_slug(params[:id])
    erb :'/landmarks/show'
  end


  

end
