priors = ["Ate Sweets", "Drank Alcohol", "Went for a run", "Ate out", "Called Mom", "Read for fun", "Got a tattoo"]
countdowns = ["Spiderman: No Way Home", "The Wisdom of Crowds", "Loki", "The Eternals", "Legend of Mana"]

countdowns.each do |f|
  Countdown.create! title: f, event_date: Time.zone.now + rand(15..75).days
end
