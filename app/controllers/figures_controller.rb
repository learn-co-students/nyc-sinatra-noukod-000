class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    erb :"figures/index"
  end

  get '/figures/new' do
    erb :"figures/new"
  end

  get '/figures/:id' do
    @figure = Figure.find params[:id]

    erb :"figures/show"
  end

  get '/figures/:id/edit' do
    @figure = Figure.find params[:id]

    erb :"figures/edit"
  end

  patch '/figures/:id' do
    # binding.pry
    figure = Figure.find params[:id]
    figure.update params[:figure]
    figure.landmarks << Landmark.create(params[:landmark]) unless params[:landmark].empty? #add new landmark
    figure.titles << Title.create(params[:title]) unless params[:title].empty? #add new title

    redirect "/figures/#{figure.id}"
  end

  post '/figures' do
    # binding.pry
    figure = Figure.create params[:figure] #new_figure with or without titles and landmarks
    figure.landmarks << Landmark.create(params[:landmark]) if !params[:landmark].empty? #add new landmark
    figure.titles << Title.create(params[:title]) if !params[:title].empty? #add new title

    redirect to "/figures/#{figure.id}"
  end
end