class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin_role
  def index
    
  end

  def manage_buildings
  end

  def manage_apartments
  end
  private

  def check_admin_role
    unless current_user.admin?
      redirect_to root_path, alert: "Acceso denegado. Debes ser un administrador para acceder a esta sección."
    end
  end
end
