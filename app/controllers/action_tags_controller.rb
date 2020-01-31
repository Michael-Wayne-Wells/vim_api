class ActionTagsController < ApplicationController
  before_action :set_action_tag, only: [:show, :update, :destroy]

  # GET /action_tags
  def index
    @action_tags = ActionTag.all

    render json: @action_tags
  end

  # GET /action_tags/1
  def show
    render json: @action_tag
  end

  # POST /action_tags
  def create
    @action_tag = ActionTag.new(action_tag_params)

    if @action_tag.save
      render json: @action_tag, status: :created, location: @action_tag
    else
      render json: @action_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /action_tags/1
  def update
    if @action_tag.update(action_tag_params)
      render json: @action_tag
    else
      render json: @action_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /action_tags/1
  def destroy
    @action_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_tag
      @action_tag = ActionTag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def action_tag_params
      params.permit(:name)
    end
end
