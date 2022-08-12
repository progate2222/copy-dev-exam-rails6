class HousesController < ApplicationController

    def new
        @house = House.new
    end

    def create
        @house = House.new(house_params)
        if @house.save
            redirect_to house_path(@house.id)
        else
            render :new
        end
    end

    def show
        @house = House.find(params[:id])
    end

    def index

    end

    def edit

    end

    private

    def house_params
        params.require(:house).permit(:name, :rent, :adress,:age, :remarks,
                                                        stations_attributes: [:id, :route, :station_name, :mitutes])
    end

end
