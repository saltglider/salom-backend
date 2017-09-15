namespace :post_tags do
  desc "seed associated posts with tags and comments"
  task seed_posttags: :environment do
    Post.all.each do |post|
      rand(4).times { Comment.create([content: Faker::Lorem.sentence, post_id: post.id, session_id: rand(1..9)]) }
      tags = 2.times { post.tags.create([name: Faker::Color.color_name, color: Faker::Color.hex_color]) }
    end
    p "Created #{Post.count} posts with tags and comments"
  end
end
