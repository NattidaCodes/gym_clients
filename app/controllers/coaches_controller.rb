class CoachesController < ApplicationController

    #index
    get '/coaches' do
        @coaches = Coach.all

        erb :"coaches/index"
    end

    #new
    get '/coaches/new' do

    end

    #show
    get '/coaches/:id' do
        @coach = Coach.find_by(id: params[:id])

        erb :"coaches/show"
    end

end