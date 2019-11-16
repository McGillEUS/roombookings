class BuildingsController < ApplicationController
    def index
        @buildings = Building.all()
    end

    def create
        new_building = Building.new(
            name: params[:name],
            description: params[:description]            
        )
        save_status = new_building.save
        if !save_status
            flash[:error] = "Save unsuccessful"
        else
            flash[:success] = "Saved succesfully!"
        end
        redirect_to buildings_path
    end
end
