class FiguresController < ApplicationController
  
  get '/figures' do
    @figures = Figure.all
    erb :'figures/index'
  end

  get '/figure/new' do
    @landmarks = Landmark.all
    @title = Title.all
    erb :'figures/new'
  end

  post '/figures' do
    #change to correct erb path
    erb :'figures/index'
  end

  # get '/figures/:slug' do
  #   @figure = Figure.find_by_slug(params[:slug])
  #   erb :'figures/show'
  # end


end
