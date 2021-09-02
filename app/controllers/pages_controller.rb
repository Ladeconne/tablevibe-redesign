class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :pricing, :how_it_works ]

  def home
    @customers = Customer.all
  end

  def pricing
  end

  def how_it_works
  end
end
