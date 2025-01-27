class MainController < ApplicationController
    def index
        flash[:notice] = "You have arrived"
        flash[:alert] = "You have not arrived"
    end
end