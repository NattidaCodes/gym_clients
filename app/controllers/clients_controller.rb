class ClientsController < ApplicationController

    get '/clients' do
        @clients = Client.all

        erb :"clients/index"
    end

    get '/clients/:id' do
        @clients = Client.find_by(id: params[:id])

        erb :"clients/show"
    end
    
end