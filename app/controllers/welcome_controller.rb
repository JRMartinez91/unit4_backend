class WelcomeController < ApplicationController
    def index
        render json: {status: 200, message:"Rails React Library API"}
    end
end
