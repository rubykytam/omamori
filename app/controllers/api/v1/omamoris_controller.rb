class Api::V1::OmamorisController < ApplicationController
  def index
    if params[:name].present?
      @omamoris = Omamori.where('title ILIKE ?', "%#{params[:name]}%")
    else
    @omamoris = Omamori.all
    end
    render json: @omamoris.order(created_at: :desc).as_json(methods: [:photo_urls]), status: :ok
  end
end
