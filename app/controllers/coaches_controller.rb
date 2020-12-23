class CoachesController < ApplicationController

    #index
    get '/coaches' do
        @coaches = Coach.all

        erb :"coaches/index"
    end

    #show

    #new

end