namespace :sessions do
  desc "seed sessions"
  task seed_sessions: :environment do
    avatars = Avatar.all.pluck(:id)
    100.times do |index|
      Session.create!(token: Faker::Crypto.md5,
                    avatar_id: avatars.sample)
    end
    p "Created #{Session.count} sessions"
  end
end
