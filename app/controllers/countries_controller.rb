class CountriesController < ApplicationController

    def index
      if params[:name]
      @countries = Country.where("name ilike ?", "%#{params[:name]}%")
      else
      @countries = Country.all
      end
    end

    def new
      @country= Country.new
    end

    def create
      Country.create(country_params)
      redirect_to(countries_path)
    end

    def show
      begin
      @country= Country.find(params[:id])
      rescue
      @error = "No Country found, sorry."
      end
    end

    def destroy  
      Country.find(params[:id]).destroy
      redirect_to(countries_path)
    end

    def edit
      @country= Country.find(params[:id])
    end

    def update
      @country = Country.find(params[:id]).update(country_params)
      redirect_to(countries_path)
    end

    def search
      @country = Country.where name: params[:name]
      # redirect_to(search_path)
    end


    private
    def country_params
      params.require(:country).permit(:name, :flag_image, :population, :size, :first_language, :currancy)
    end
   
end