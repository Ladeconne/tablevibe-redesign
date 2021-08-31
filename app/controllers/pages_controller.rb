class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :pricing ]

  def home
    @customers = Customer.all
  end

  def pricing
  end
end
