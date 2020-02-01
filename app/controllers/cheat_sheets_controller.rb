# frozen_string_literal: true

class CheatSheetsController < ApplicationController
  before_action :set_cheat_sheet, only: %i[show update destroy]

  # GET /cheat_sheets
  def index
    search = params[:search]
    @cheat_sheets = CheatSheet.search(search)
    render json: @cheat_sheets
  end

  def random
    @random = CheatSheet.random
    render json: @random
  end

  def show
    render json: @cheat_sheet
  end

  # POST /cheat_sheets
  def create
    @cheat_sheet = CheatSheet.new(cheat_sheet_params)

    if @cheat_sheet.save
      render json: @cheat_sheet, status: :created, location: @cheat_sheet
    else
      render json: @cheat_sheet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cheat_sheets/1
  def update
    if @cheat_sheet.update(cheat_sheet_params)
      render json: @cheat_sheet
    else
      render json: @cheat_sheet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cheat_sheets/1
  def destroy
    @cheat_sheet.delete
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cheat_sheet
    @cheat_sheet = CheatSheet.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def cheat_sheet_params
    params.permit(:search, :key_stroke, :result)
  end
end
