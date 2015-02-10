
justin = User.create username: "Justin", password: "12345"
jonathan = User.create username: "Jonathan", password: "54321"

categories = %w(sports nightlife animals food nature fashion technics transport people)


10.times do
  user = [justin, jonathan].sample
  user.pins.create photo: "http://lorempixel.com/500/500/#{categories.sample}/"
end
