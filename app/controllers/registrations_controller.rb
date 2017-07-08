class RegistrationsController < ApplicationController
  before_action :authenticate_user!

  def create
    @Registration = current_user.registrations.create(registration_params.merge(event_id: params[:event_id]))
# ,price: @price
    redirect_to @Registration.event, notice: "Thanks for your registration!"
  end

  private
  def registration_params
    params.require(:registration).permit(:status, :price, :guests_count,:price)
  end

end
