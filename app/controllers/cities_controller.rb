class CitiesController < ApplicationController

    def index
      if params[:name]
      @cities = City.where("name ilike ?", "%#{params[:name]}%")
      else
      @cities = City.all
      end
    end

    def new
      @city= City.new
    end

    def create
      City.create(city_params)
      redirect_to(cities_path)
    end

    def show
      begin
      @city= City.find(params[:id])
      rescue
      @error = "No city found, sorry."
      end
    end

    def destroy  
      City.find(params[:id]).destroy
      redirect_to(cities_path)
    end

    def edit
      @city= City.find(params[:id])
    end

    def update
      @city = City.find(params[:id]).update(city_params)
      redirect_to(cities_path)
    end

    # def search
    #   @city = City.where name: params[:name]
    #   # redirect_to(search_path)
    # end


    private
    def city_params
      params.require(:city).permit(:name, :population, :size, :country_id)
    end
   
end