class PropertiesController < ApplicationController
    before_action :authenticate_user! #authenticate_user is a devise method
    before_action :only_current_user
    
    def index
       @user = User.find(params[:user_id])
    end
    
    def new
        # form where a user can create a new property
        @user = User.find(params[:user_id])
        @property = Property.new
    end
    
    def create
        @user = User.find(params[:user_id]) #identify user
        @property = @user.properties.build(property_params)
        if @property.save
            flash[:success] = "Property Saved!"
            redirect_to user_properties_path
        else
            render action: :new
        end
    end
    
    def edit
        @user = User.find(params[:user_id])
        @property = @user.properties.find(params[:id])
    end
    
    private
    def property_params
        params.require(:property).permit(:property_name, :property_location, :description)
    end
    
    def only_current_user
        @user = User.find(params[:user_id])
        redirect_to(root_url) unless @user == current_user
    end
    
    
end