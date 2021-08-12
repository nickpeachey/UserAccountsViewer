class AccessesController < ApplicationController

    def index
        @accesses = Access.all
    end

    def show
        @access = Access.find(params[:id])
    end

    def new
        @access = Access.new
    end

    def create
        @access = Access.new(allowed_params)
        @access.save
        redirect_to access_path(@access)
    end

    def allowed_params
        params.require(:access).permit(:name, :description, :webpage_url)
    end

end