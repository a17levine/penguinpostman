require 'stripe'

class MailingsController < ApplicationController
	def new
  	@mailing = Mailing.new
  end

  def create
  	@mailing = Mailing.new(params[:mailing])

    if @mailing.save
      flash[:notice] = "Database record successfully created"
      render action: 'edit'
    else
      render action: 'new'
      flash[:notice] = "There were some errors"
    end
  end

  def show
    
  end

  def update
  	@mailing = Mailing.find(params[:id])
    unless @mailing.order_processed
      begin
        @charge = Stripe::Charge.create(
          :amount => 400,
          :currency => "usd",
          :card => params[:stripeToken], # obtained with Stripe.js
          :description => "Charge for test@example.com"
        )
        flash[:notice] = "Thank you for your order! You should expect it to arrive within 4-6 business days!"
        redirect_to root_path
      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to edit_mailing_path(@mailing.id)
      end
    end
  end

  def destroy
  	
  end

  def edit
  	@mailing = Mailing.find(params[:id])
  end

  def index
  	
  end
end
