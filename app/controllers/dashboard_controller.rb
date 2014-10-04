class DashboardController < ApplicationController
  def index
    envato = Envato::Client.new
    envato.user('rafalchmiel')
  end
end
