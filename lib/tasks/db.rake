namespace :db do
  desc "populate database"
  task populate: :environment do
    puts "Resetting the database"
    Rake::Task['db:reset'].invoke
    puts "Populating database with sample data"
    Rake::Task['users:seed_users'].invoke
    Rake::Task['posts:seed_posts'].invoke
    Rake::Task['post_tags:seed_posttags'].invoke
    Rake::Task['statistics:seed_statistics'].invoke
    Rake::Task['avatars:seed_avatars'].invoke
    Rake::Task['sessions:seed_sessions'].invoke
    Rake::Task['tags:seed_tags'].invoke
  end
end
