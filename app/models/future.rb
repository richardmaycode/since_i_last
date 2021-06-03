class Future < ApplicationRecord
  include Eventable

  def days
    (event.date.to_date - Time.zone.now.to_date).to_i
  end
end
