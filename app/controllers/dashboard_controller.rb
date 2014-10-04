class DashboardController < ApplicationController
  def index
    @envato_user = Envato::Client.new(current_user.envato_username, '7fnkgry2e17b7ooz7dgdlda6iwg9h6jr')
  end
end
