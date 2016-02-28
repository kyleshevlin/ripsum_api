class RipsumsController < ApplicationController
  include Ripsum

  def index
    unless !is_number?(params[:count]) || params[:variance].present? && !is_number?(params[:variance])
      count = params[:count].to_i
      variance = params[:variance].present? ? process_variance(params[:variance]) : 0
      text = ripsum(count, variance)

      render json: { "status": 200, "data": text }
    else
      render json: { "status": 400, "errors": "Something went wrong. Check the format of the URL you provided" }
    end
  end

  private

  def process_variance(variance)
    variance.to_f / 100
  end

  def is_number?(string)
    true if Float(string) rescue false
  end

end
