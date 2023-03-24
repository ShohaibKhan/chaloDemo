class DealershipsController < ApplicationController
  def show
    @dealers = User.where("is_checked = ?", true)
  end
end
