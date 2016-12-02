class CompendiumsController < ApplicationController
    def new
        @compendium = Compendium.new
    end
    
    def index
    end
end