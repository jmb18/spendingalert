class WelcomeController < ApplicationController
  def index
  end

  def dashboard
		@user = current_user
  end

  def sample_elements
  end
end
