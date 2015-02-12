
justin = User.create username: "Justin", password: "12345"
jonathan = User.create username: "Jonathan", password: "54321"

categories = %w(sports nightlife animals food nature fashion technics transport people)
names = %w(stuff uglypic crazything morethings)

30.times do
  user = [justin, jonathan].sample
  user.pins.create name: "#{names.sample.upcase}", remote_photo_url: "http://lorempixel.com/500/500/#{categories.sample}/"
end
