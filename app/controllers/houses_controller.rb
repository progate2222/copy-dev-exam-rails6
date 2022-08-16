class HousesController < ApplicationController

    def new
        @house = House.new
        2.times {@house.stations.build }
        # binding.pry
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
        @houses = House.all
    end

    def edit
        @house = House.find(params[:id])
        @house.stations.build
    end

    def update
        @house = House.find(params[:id])
        respond_to do |format|
            if @house.update(house_params)
                format.html { redirect_to house_url(@house), notice: "情報をアップデートしました" }
                format.json { render :show, status: :ok, location: @house }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @house.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def destroy
        @house = House.find(params[:id])
        @house.destroy
        respond_to do |format|
            format.html { redirect_to houses_url, notice: "物件の情報を削除しました" }
            format.json { head :no_content }
        end
    end

    private

    def house_params
        params.require(:house).permit(:name, :rent, :address,:age, :remarks,
                                                        stations_attributes: [:id, :route, :station_name, :mitutes])
    end

end
