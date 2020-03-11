class HomeController < ApplicationController
    def index
        redirect_to healths_path if user_signed_in?
     end
end
