class CoachesController < ApplicationController

    #new - loads a form
    get '/coaches/new' do
        erb :"coaches/new" 
    end

    #create - process the form and creates a coach
    post "/coaches" do
        coach = Coach.create(params)
        redirect "/coaches"
    end
    
    #index - loads all coaches
    get '/coaches' do
        @coaches = Coach.all

        erb :"coaches/index"
    end

    #show - get details on an indiviual coach
    get '/coaches/:id' do
        @coach = Coach.find_by(id: params[:id])
        if @coach
            erb :"coaches/show"
        else
            redirect "/coaches"
        end
    end

end