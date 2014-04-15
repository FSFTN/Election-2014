require 'csv' 

namespace :create do
  desc "create states"
  task :states => :environment do
    file = "db/state.csv"
    puts "*********creating states**********"
    CSV.foreach(file, :headers => true) do |row|
      a = State.create!(row.to_hash)
      puts a.inspect
    end
  end

  desc "create parites"
  task :parties => :environment do
    file = "db/parties.csv"
    puts "*********creating states**********"
    CSV.foreach(file, :headers => true) do |row|
      a = Party.create!(row.to_hash)
      puts a.inspect
    end
  end
end

namespace :constituency do
  desc "create constituency for Tamil Nadu"
  task :tn => :environment do
    file = "db/constituency/tamil_nadu.csv"
    puts "*********creating Constituency for Tamil Nadu**********"
    CSV.foreach(file, :headers =>true) do |row|
      a =Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create constituency for Andhara Pradesh"
  task :andhra => :environment do
    file = "db/constituency/andhra_pradesh.csv"
    puts "*********creating Constituency for Andhara Pradesh**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create constituency for Assam"
  task :assam => :environment do
    file = "db/constituency/assam.csv"
    puts "*********creating Constituency for Assam**********"
    CSV.foreach(file, :headers =>true) do |row|
      a =Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create constituency for Gujarat"
  task :gujarat => :environment do
    file = "db/constituency/gujarat.csv"
    puts "*********creating Constituency for Gujarat**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create constituency for Bihar"
  task :bihar => :environment do
    file = "db/constituency/bihar.csv"
    puts "*********creating Constituency for Bihar**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Arunachal Pradesh"
  task :arunachal_pradesh => :environment do
    file = "db/constituency/arunachal_pradesh.csv"
    puts "*********creating Constituency for Arunachal Pradesh**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Goa"
  task :goa => :environment do
    file = "db/constituency/goa.csv"
    puts "*********creating Constituency for Goa**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Haryana"
  task :haryana => :environment do
    file = "db/constituency/haryana.csv"
    puts "*********creating Constituency for Haryana**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Himachal Pradesh"
  task :himachal_predesh => :environment do
    file = "db/constituency/himachal_predesh.csv"
    puts "*********creating Constituency for Himachal Pradesh**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Jammu and Kashmir"
  task :jammu_kashmir => :environment do
    file = "db/constituency/jammu_kashmir.csv"
    puts "*********creating Constituency for Jammu and Kashmir**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Karnataka"
  task :karnataka => :environment do
    file = "db/constituency/karnataka.csv"
    puts "*********creating Constituency for Karnataka**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for kerala"
  task :kerala => :environment do
    file = "db/constituency/kerala.csv"
    puts "*********creating Constituency for Kerala**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Madhya Pradesh"
  task :madhya_pradesh => :environment do
    file = "db/constituency/madhya_pradesh.csv"
    puts "*********creating Constituency for Madhya Pradesh**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Maharashtra"
  task :maharashtra => :environment do
    file = "db/constituency/maharashtra.csv"
    puts "*********creating Constituency for Maharashtra**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Manipur"
  task :manipur => :environment do
    file = "db/constituency/manipur.csv"
    puts "*********creating Constituency for Manipur**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Meghalaya"
  task :meghalaya => :environment do
    file = "db/constituency/meghalaya.csv"
    puts "*********creating Constituency for Meghalaya**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Mizoram"
  task :mizoram => :environment do
    file = "db/constituency/mizoram.csv"
    puts "*********creating Constituency for Mizoram**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Nagaland"
  task :nagaland => :environment do
    file = "db/constituency/nagaland.csv"
    puts "*********creating Constituency for Nagaland**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Orissa"
  task :orissa => :environment do
    file = "db/constituency/orissa.csv"
    puts "*********creating Constituency for Orissa**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Punjab"
  task :punjab => :environment do
    file = "db/constituency/punjab.csv"
    puts "*********creating Constituency for Punjab**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Rajasthan"
  task :rajasthan => :environment do
    file = "db/constituency/rajasthan.csv"
    puts "*********creating Constituency for Rajasthan**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Sikkim"
  task :sikkim => :environment do
    file = "db/constituency/sikkim.csv"
    puts "*********creating Constituency for Sikkim**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Tripura"
  task :tripura => :environment do
    file = "db/constituency/tripura.csv"
    puts "*********creating Constituency for Tripura**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Uttar Pradesh"
  task :utter_pradesh => :environment do
    file = "db/constituency/uttar_pradesh.csv"
    puts "*********creating Constituency for Uttar Pradesh**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for West Bengal"
  task :west_bengal => :environment do
    file = "db/constituency/west_bengal.csv"
    puts "*********creating Constituency for Bengal**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Chattisgarh"
  task :chattisgarh => :environment do
    file = "db/constituency/chattisgarh.csv"
    puts "*********creating Constituency for Chattisgarh**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Jharkhand"
  task :jharkhand => :environment do
    file = "db/constituency/jharkhand.csv"
    puts "*********creating Constituency for Jharkhand**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Uttarakhand"
  task :uttarakhand => :environment do
    file = "db/constituency/uttarakhand.csv"
    puts "*********creating Constituency for Uttarakhand**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Andaman and Nicobar"
  task :andaman_nicobar => :environment do
    file = "db/constituency/andaman_nicobar.csv"
    puts "*********creating Constituency for Andaman and Nicobar**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Chandigarh"
  task :chandigarh => :environment do
    file = "db/constituency/chandigarh.csv"
    puts "*********creating Constituency for Chandigarh**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Dadra and Nagar Haveli"
  task :dadra_nagar => :environment do
    file = "db/constituency/dadra_nagar.csv"
    puts "*********creating Constituency for Dadra and Nagar**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Daman and Diu"
  task :daman_diu => :environment do
    file = "db/constituency/daman_diu.csv"
    puts "*********creating Constituency for Daman and Diu**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for nct_of_delhi"
  task :nct_of_delhi => :environment do
    file = "db/constituency/nct_of_delhi.csv"
    puts "*********creating Constituency for Delhi **********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Lakshadweep"
  task :lakshadweep => :environment do
    file = "db/constituency/lakshadweep.csv"
    puts "*********creating Constituency for Lakshadweep**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  desc "create Constituency for Puducherry"
  task :puducherry => :environment do
    file = "db/constituency/puducherry.csv"
    puts "*********creating Constituency for Puducherry**********"
    CSV.foreach(file, :headers =>true) do |row|
      a = Constituency.create!(row.to_hash) 
      puts a.inspect
    end
  end

  task :all => [:tn, :andhra, :assam, :gujarat, :bihar, :arunachal_pradesh, :goa, :haryana, :himachal_predesh, :jammu_kashmir, :karnataka, :kerala, :madhya_pradesh, :maharashtra, :manipur, :meghalaya, :mizoram, :nagaland, :orissa, :punjab, :rajasthan, :sikkim, :tripura, :utter_pradesh, :west_bengal, :chattisgarh, :jharkhand, :uttarakhand, :andaman_nicobar, :chandigarh, :dadra_nagar, :daman_diu, :nct_of_delhi, :lakshadweep, :puducherry]
end

namespace :db do
  task :populate => ['create:states', 'constituency:all']
end
