class FormsController < ApplicationController
  def new
    @form = Form.new
  end

  def create
    @form = Form.new(params[:form])
    @form.request = request
    if @form.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
