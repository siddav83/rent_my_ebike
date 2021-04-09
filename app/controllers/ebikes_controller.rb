class EbikesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]

  def index
    @ebike = Ebike.all

    # add geocoder here
  end

  def show
    @ebike = Ebike.find(params[:id])
    @booking = Booking.new

  end

  def new
    @ebike = Ebike.new
  end

  def create
    @ebike = Ebike.new(ebike_params.merge(user_id: current_user.id))
     if @ebike.save!
      redirect_to @ebike
    else
      render :new
    end
  end

  def update
    @ebike = Ebike.find(params[:id])
    @ebike.update()
  end

  def destroy
  end

  private

  def ebike_params
    params.require(:ebike).permit(:name, :cost, :description, :location, :rating)
  end

end
