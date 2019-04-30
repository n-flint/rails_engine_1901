namespace :import do
  desc  "rake import data from merchant csv files"
  task merchant: :environment do
    require 'csv'
    CSV.foreach('lib/data/merchants.csv', :headers => true) do |row|
      Merchant.create(row.to_hash)
    end
  end
end