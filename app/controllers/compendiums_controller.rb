class CompendiumsController < ApplicationController
    def new
        @compendium = Compendium.new
    end
    
    def create
        @property = Property.find(params[:property_id]) #identify corresponding property
        logger.info(@property) 
        @compendium = @property.build_compendium(params[:faq_view])
        if @compendium.save
            flash[:success] = "Changes Saved!"
            redirect_to edit_property_compendium_path
        else
            render action: :new
        end
    end
    
    def edit
        @property = Property.find(params[:property_id]) #identify corresponding property
        @compendium = @property.compendium
    end
    
    def update
        @property = Property.find(params[:property_id]) #identify corresponding property
        @compendium = @property.compendium
        if @compendium.update_attributes(compendium_params)
            flash[:success] = "Changes Saved!"
            redirect_to edit_property_compendium_path
        else
            render action: :edit
        end
    end
    
    def index
       
    end
    
    private
    def compendium_params
        params.require(:compendium).permit( :faq_view)
    end
    
end