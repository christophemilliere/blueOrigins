class ReservationsController < ApplicationController
  before_action :check_name_duplicate, only: [:create]
  before_action :clear_outdated

  def index
    @teleporters = Teleporter.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservations_path, notice: 'Votre réservation a bien été enregistrée'
    else
      redirect_to reservations_path, alert: 'une erreur est survenue'
    end
  end

  def destroy
    @reservation = Reservation.find_by(id: params[:id])
    @reservation.destroy
    redirect_to reservations_path, notice: 'Votre réservation à bien été annulée'
  end

  private
  def clear_outdated
    reservations = Reservation.all

    reservations.each do |r|
      r.destroy if r.outdated?
    end
  end

  def check_name_duplicate
    check_name =  Reservation.find_by(name: params[:reservation][:name])
    return redirect_to reservations_path, alert: 'Le nom est déjà utilisé pour un téléporteur'   if check_name.present?

  end

  def reservation_params
    params.require(:reservation).permit(:name, :teleporter_id)
  end
end
