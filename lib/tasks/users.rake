namespace :users do
  desc "seed users"
  task seed_users: :environment do
    100.times do |index|
      User.create!(name: Faker::Name.name,
                  password_digest: "password",
                  session: Faker::Number.between(0, 4))
    end
    p "Created #{User.count} users"
  end

end
