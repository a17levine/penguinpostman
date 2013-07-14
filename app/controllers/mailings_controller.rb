require 'stripe'

class MailingsController < ApplicationController
	def new
  	@mailing = Mailing.new
  end

  # if our create action renders or redirects, do that
  # otherwise, default to "create" view (the view is the name of action)
  # finally, throw an error, we give up
  def create
  	@mailing = Mailing.new(params[:mailing])

    if @mailing.save
      redirect_to show_mailing_url(@mailing), notice: "Database record successfully created"
    else
      render action: 'new'
      flash[:notice] = "There were some errors"
    end
  end

  def show
    @mailing = Mailing.find(params[:id])
  end

  def update
  	@mailing = Mailing.find(params[:id])

    if @mailing.update_attributes(params[:mailing])
      redirect_to @mailing, notice: 'Mailing was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
  	
  end

  def place_order
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
        @mailing.order_processed = true
        @mailing.save
        redirect_to root_path
      rescue Stripe::CardError => e
        # flash[:error] = e.message
        # redirect_to edit_mailing_path(@mailing.id)
        redirect_to edit_mailing_path(@mailing.id), :notice => "#{e.message}"
      end
    end   
  end

  def edit
  	@mailing = Mailing.find(params[:id])
  end

  def index
  	
  end
end
