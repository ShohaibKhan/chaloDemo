class DealershipsController < ApplicationController

  def show
    @dealers = User.where("is_checked = true and is_dealer = false")
  end
  
  def verified
    @verified_dealers = User.where("is_checked = true and is_dealer = true")
  end
    

  def toggle
    email = params[:param1]
    @dealer = User.where("email = ?", email).first
    if @dealer != nil
      @dealer.update(is_dealer: true)
    end
    redirect_to action: "show"
  end

  def toggle1
    email = params[:param1]
    @dealer = User.where("email = ?", email).first
    if @dealer != nil
      @dealer.update(is_dealer: false)
    end
    redirect_to action: "verified"
  end
end
