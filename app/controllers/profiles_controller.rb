class ProfilesController < ApplicationController
    def new
        # form where a user can complete profile
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile
    end
    
    def update
        
    end
    
end