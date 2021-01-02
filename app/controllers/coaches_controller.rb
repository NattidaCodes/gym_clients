class CoachesController < ApplicationController

    #index - loads all coaches
    get '/coaches' do
        @coaches = Coach.all

        erb :"coaches/index"
    end

    # #new
    # get '/coaches/new' do

    # end

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