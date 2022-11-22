class SpicesController < ApplicationController
    def index
        spices = Spice.all
        render json: spices
    end

    # def show 
    #     spice = Spice.find(params[:id])
    #     render json: spice
    # end

    def create
        spices = Spice.create(spice_params)
        render json: spices, status: :created
    end

    def update
        spice = Spice.find(params[:id])
        spice.update(spice_params)
        render json: spice, status: :accepted
    end

    def destroy
        spice = Spice.find(params[:id])
        spice.destroy
        head :no_content
    end


    private 

    def spice_params
        params.permit(:id, :title, :image, :description, :notes, :rating)
    end


end
