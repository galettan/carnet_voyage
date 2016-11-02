class CongressesController < ApplicationController
  before_action :set_congress, only: [:show, :update, :destroy]

  # GET /congresses
  def index
    @congresses = Congress.all

    render json: @congresses
  end

  # GET /congresses/1
  def show
    render json: @congress.to_json(
        :include => {
            :hotels => {
                :include => {:hotel_various_infos => {:except => [:id, :hotel_id, :created_at, :updated_at]}},
                :except => [:created_at, :updated_at, :congress_id, :id]
            },
            :agenda_events => {
                :except => [:created_at, :updated_at, :congress_id, :id]
            }
        },
        :except => [:created_at, :updated_at, :id])
  end

  # POST /congresses
  def create
    @congress = Congress.new(congress_params)
    if @congress.save
      render json: @congress, status: :created, location: @congress
    else
      render json: @congress.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /congresses/1
  def update
    if @congress.update(congress_params)
      render json: @congress
    else
      render json: @congress.errors, status: :unprocessable_entity
    end
  end

  # DELETE /congresses/1
  def destroy
    @congress.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_congress
    @congress = Congress.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def congress_params
    params.permit(
      :name,
      :subtitle,
      :place,
      :date_from,
      :date_to,
      :host_company,
      :host_logo_url,
      :color,
      :template_id,
      hotels_attributes: [
        :name,
        :address,
        :postal_code,
        :city, :country,
        :phone_nbr,
        :check_in_time,
        :check_out_time,
        hotel_various_infos_attributes: [
          :title,
          :content
        ]
      ]
    )
  end

  def hotels_params
    congress_params[:hotels]
  end
end