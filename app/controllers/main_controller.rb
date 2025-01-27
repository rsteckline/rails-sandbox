class MainController < ApplicationController
    def index
        flash.now[:notice] = "You have arrived"
        flash.now[:alert] = "You have not arrived"
    end
end