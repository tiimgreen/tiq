class DashboardController < ApplicationController
  def index
    if current_user.api_key.present?
      @envato_user = Envato::Client.new(
        current_user.envato_username,
        current_user.api_key
      )
    else
      @envato_user = nil
    end
  end
end
