require 'csv' 

namespace :create do
  desc "create states"
  task :states => :environment do
    file = "db/state.csv"
    CSV.foreach(file, :headers => true) do |row|
      State.create!(row.to_hash)
    end
  end
end
namespace :constituency do
  desc "create constituency for Tamil Nadu"
  task :tn => :environment do
    file = "db/constituency/tamil_nadu.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create constituency for Andhara Pradesh"
  task :andhra => :environment do
    file = "db/constituency/andhra_pradesh.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create constituency for Assam"
  task :assam => :environment do
    file = "db/constituency/assam.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create constituency for Gujarat"
  task :gujarat => :environment do
    file = "db/constituency/gujarat.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

end
