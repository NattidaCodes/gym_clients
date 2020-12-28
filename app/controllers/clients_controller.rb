class ClientsController < ApplicationController

    get '/clients' do
        erb :"clients/index"
    end
end