class UsersController < ApplicationController
    #Signup

    #Load form
    get '/signup' do
        erb :"users/new"
    end

    #Process form & create user
    post '/signup' do
        ##Create the user & log them in
        user = User.new(params[:user])
        if user.save
            session[:user_id] = user.id
            redirect "/clients"
        else
            @errors = user.errors.full_messages.join(" - ")
            erb :"users/new"
        end
    end

    get "/login" do
        erb :"users/login"
    end

    post "/login" do
        user = User.find_by(username:params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect "/clients"
        else
            redirect "/login"
        end
    end

    get "/logout" do
        session.clear
        redirect "/login"
    end

end