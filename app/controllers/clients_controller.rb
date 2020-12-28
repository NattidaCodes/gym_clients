class ClientsController < ApplicationController

    get '/clients' do
        @clients = Client.all
        erb :"clients/index"
    end
end