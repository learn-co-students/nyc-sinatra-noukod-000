class FiguresController < ApplicationController
  register Sinatra::ActiveRecordExtension
   set :session_secret, "my_application_secret"
   set :views, Proc.new { File.join(root, "../views/") }
  
  # add controller methods

  get '/figures' do
    @figure =Figure.all
    erb :'figures/index'
  

  get '/figures/new' do
    erb :'figures/new'
  end

  post '/figures' do
    #jbjbj
    @figure = Figure.create(params['figure'])
    unless params[:landmark][:name].empty?
    @figure.landmarks << Landmark.create(params[:landmark])
  end

   unless params[:title][:name].empty?
     @figure.titles << Title.create(params[:title])
  end

  @figure.save
  redirect to "/figures/#{@figure.id}"
  end
end


# post '/figures' do
#   @figure = Figure.create(params['figure'])
#   unless params[:landmark][:name].empty?
#     @figure.landmarks << Landmark.create(params[:landmark])
#   end

#   unless params[:title][:name].empty?
#     @figure.titles << Title.create(params[:title])
#   end

#   @figure.save
#   redirect to "/figures/#{@figure.id}"
# end