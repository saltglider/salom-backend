namespace :posts do
  desc "seed posts"
  task seed_posts: :environment do
    100.times do |index|
      Post.create!(title: Faker::RickAndMorty.quote,
                  description: Faker::Lorem.sentence,
                  source: Faker::Internet.url,
                  source_post: Faker::Internet.url,
                  source_thumbnail: Faker::Internet.url,
                  views: Faker::Number.number(4),
                  likes: Faker::Number.number(4),
                  license: Faker::Internet.slug)
    end
    p "Created #{Post.count} posts"
  end
end
