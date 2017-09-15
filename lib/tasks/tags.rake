namespace :tags do
  desc "seed tags"
  task seed_tags: :environment do
    100.times do |index|
      Tag.create!(name: Faker::Color.color_name,
                  color: Faker::Color.hex_color)
    end
    p "Created #{Tag.count} tags"
  end
end
