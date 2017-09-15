namespace :avatars do
  desc "Seed Avatars"
  task seed_avatars: :environment do
    100.times do |index|
      Avatar.create!(source: Faker::Avatar.image,
                    name: Faker::Name.name)
    end
    p "Created #{Avatar.count} avatars"
  end
end
