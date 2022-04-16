class Partners::SearchesController < ApplicationController
  def index
    respond_to do |format|
      format.turbo_stream do
        @partners = Partner.where("name LIKE :name", name: "%#{params[:search_term]}%")
  
        render turbo_stream: turbo_stream.replace(
          :partnerListing,
          partial: "partners/listing"
        )
      end
    end
  end
end
