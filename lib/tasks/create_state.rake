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

  desc "create constituency for Bihar"
  task :bihar => :environment do
    file = "db/constituency/gujarat.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create constituency for Bihar"
  task :bihar => :environment do
    file = "db/constituency/bihar.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Arunachal Pradesh"
  task :bihar => :environment do
    file = "db/constituency/arunachal_pradesh.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Arunachal Pradesh"
  task :bihar => :environment do
    file = "db/constituency/arunachal_pradesh.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Goa"
  task :goa => :environment do
    file = "db/constituency/goa.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Haryana"
  task :haryana => :environment do
    file = "db/constituency/haryana.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Himachal Pradesh"
  task :himachal_predesh => :environment do
    file = "db/constituency/haryana.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Jammu and Kashmir"
  task :jammu_kashmir => :environment do
    file = "db/constituency/jammu_kashmir.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Karnataka"
  task :karnataka => :environment do
    file = "db/constituency/karnataka.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for kerala"
  task :kerala => :environment do
    file = "db/constituency/kerala.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Madhya Pradesh"
  task :madhya_pradesh => :environment do
    file = "db/constituency/madhya_pradesh.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Maharashtra"
  task :maharashtra => :environment do
    file = "db/constituency/maharashtra.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Manipur"
  task :manipur => :environment do
    file = "db/constituency/manipur.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Meghalaya"
  task :meghalaya => :environment do
    file = "db/constituency/meghalaya.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Mizoram"
  task :mizoram => :environment do
    file = "db/constituency/mizoram.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Nagaland"
  task :nagaland => :environment do
    file = "db/constituency/nagaland.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Orissa"
  task :orissa => :environment do
    file = "db/constituency/orissa.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Punjab"
  task :punjab => :environment do
    file = "db/constituency/punjab.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Punjab"
  task :punjab => :environment do
    file = "db/constituency/punjab.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Rajasthan"
  task :rajasthan => :environment do
    file = "db/constituency/rajasthan.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Sikkim"
  task :sikkim => :environment do
    file = "db/constituency/sikkim.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Tripura"
  task :tripura => :environment do
    file = "db/constituency/tripura.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Uttar Pradesh"
  task :utter_pradesh => :environment do
    file = "db/constituency/utter_pradesh.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for West Bengal"
  task :west_bengal => :environment do
    file = "db/constituency/west_bengal.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Chattisgarh"
  task :chattisgarh => :environment do
    file = "db/constituency/chattisgarh.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Jharkhand"
  task :jharkhand => :environment do
    file = "db/constituency/jharkhand.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Uttarakhand"
  task :uttarakhand => :environment do
    file = "db/constituency/uttarakhand.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Andaman and Nicobar"
  task :andaman_nicobar => :environment do
    file = "db/constituency/andaman_nicobar.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Chandigarh"
  task :chandigarh => :environment do
    file = "db/constituency/chandigarh.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Dadra and Nagar Haveli"
  task :dadra_nagar => :environment do
    file = "db/constituency/dadra_nagar.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Daman and Diu"
  task :daman_diu => :environment do
    file = "db/constituency/daman_diu.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Daman and Diu"
  task :daman_diu => :environment do
    file = "db/constituency/daman_diu.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for nct_of_delhi"
  task :nct_of_delhi => :environment do
    file = "db/constituency/nct_of_delhi.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Lakshadweep"
  task :lakshadweep => :environment do
    file = "db/constituency/lakshadweep.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

  desc "create Constituency for Puducherry"
  task :puducherry => :environment do
    file = "db/constituency/puducherry.csv"
    CSV.foreach(file, :headers =>true) do |row|
      Constituency.create!(row.to_hash) 
    end
  end

end
