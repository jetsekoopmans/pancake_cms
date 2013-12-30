class FormsController < ApplicationController
  def new
    @pages = Pages.where(ancestry: nil).order(position: :asc)
    @form = Form.new
    @form2 = Form2.new
  end

  def create
    @pages = Pages.where(ancestry: nil).order(position: :asc)
    @form = Form.new(params[:form])
    @form2 = Form2.new(params[:form])
    @form.request = request
    @form2.request = request

    if @form.deliver and @form2.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end