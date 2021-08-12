class AccessController < ApplicationController

    def index
        @accesses = Access.all
    end

    def show
        byebug
        @access = Access.find(params[:id])
    end

end