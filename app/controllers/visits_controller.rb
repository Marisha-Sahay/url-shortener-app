class VisitsController < ApplicationController

  def create
    @link = Link.find_by(slug: params[:slug])
    if @link
      Visit.create(link_id: @link.id, ip_address: request.remote_ip)
      redirect_to "http://#{@link.target_url}"
    else
      flash[:danger] = "Link not found"
      redirect_to '/links'
    end
  end

end