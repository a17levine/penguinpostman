class MailingsController < ApplicationController
	def new
  	@mailing = Mailing.new
  end

  def create
  	@mailing = Mailing.new(params[:mailing])

    if @mailing.save
      render action: 'new'
      flash[:notice] = "Mail successfully created"
    else
      render action: 'new'
      flash[:notice] = "There were some errors"
    end
  end

  def show
  	
  end

  def update
  	
  end

  def destroy
  	
  end

  def edit
  	
  end

  def index
  	
  end
end
