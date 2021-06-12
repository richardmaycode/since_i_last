watches = ["Ate Sweets", "Drank Alcohol", "Went for a run", "Ate out", "Called Mom", "Read for fun", "Got a tattoo"]
countdowns = ["Spiderman: No Way Home", "The Wisdom of Crowds", "Loki", "The Eternals", "Legend of Mana"]

Person.create! email: "test@test.com", password: "testing", first_name: "Jim", last_name: "Bean"

watches.each do |p|
  Watch.create! title: p, executed: Time.zone.now - rand(1..25).days, person: Person.first
end

countdowns.each do |f|
  Countdown.create! title: f, event_date: Time.zone.now + rand(15..75).days, person: Person.first
end
