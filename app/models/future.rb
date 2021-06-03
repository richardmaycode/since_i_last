class Future < ApplicationRecord
  include Eventable

  def days_till_date
    (event.date.to_date - Time.zone.now.to_date).to_i
  end
end
