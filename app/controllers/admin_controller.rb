class AdminController < ApplicationController
  before_action :ensure_login
  def index
  	@firearms = Firearm.all
  end
end
