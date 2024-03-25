class Api::V1::OmamorisController < ApplicationController
  def index
    @omamoris = Omamori.all
    render json: @omamoris.order(created_at: :desc).as_json(methods: [:photo_urls]), status: :ok
  end
end
