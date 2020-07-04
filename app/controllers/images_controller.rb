class ImagesController < ApplicationController
  def destroy
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge
    render json: { id: params[:id], status: :ok }
  end
end