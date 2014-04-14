require 'csv' 
namespace :create do
  desc "create state"
  task :states => :environment do
    file = "db/state.csv"
    CSV.foreach(file, :headers => true) do |row|
      State.create!(row.to_hash)
    end
  end
end
namespace :constituency do
  task :tn => :environment do
    file = "db/tamil_nadu.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end
end
