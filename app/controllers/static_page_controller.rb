class StaticPageController < ApplicationController
  before_action :authenticate_admin!, only: [:get_candidate_data]
  def landing_page
  end

  def about
  end

	def get_candidate_data
		
	end
end
