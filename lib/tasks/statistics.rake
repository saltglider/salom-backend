namespace :statistics do
  desc "seed_statistics"
  task seed_statistics: :environment do
    100.times do |index|
      Statistic.create!(sessions_today_all: Faker::Number.number(4),
                        sessions_today_unique: Faker::Number.number(3),
                        sessions_today_returning: Faker::Number.number(2),
                        users_all_unique: Faker::Number.number(2),
                        users_month_unique: Faker::Number.number(3),
                        users_all: Faker::Number.number(5))
    end
    p "Created #{Statistic.count} statistics"
  end
end
