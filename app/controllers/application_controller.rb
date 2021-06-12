class ApplicationController < ActionController::Base
  before_action :authenticate_person!

  def after_sign_in_path_for(resource)
    person_path(current_person)
  end
end
