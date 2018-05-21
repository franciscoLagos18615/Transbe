class SearchController < ApplicationController
    def create 
        palabra = params[:keyword]
        @guard = Guard.where("rut LIKE ?", palabra)
        respond_to do |format|
            format.html {redirect_to :show}
        end
    end
end