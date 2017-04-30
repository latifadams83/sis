class HomeController < ApplicationController

  def index
    if current_user.present?
      if current_user.role == 'super_administrator'
        redirect_to super_path
      end
    end
  end

end
