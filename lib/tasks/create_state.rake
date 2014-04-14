require 'csv' 
namespace :create do
  desc "create state"
  task :state => :environment do
    file = "db/state.csv"
    CSV.foreach(file, :headers => true) do |row|
       State.create!(row.to_hash)
    end
  end
end
