namespace :import do
  desc  "rake import data from merchant csv files"
  task generic: :environment do
    require 'csv'
    CSV.foreach('./data/merchants.csv', :headers => true) do |row|
      Merchant.create(row.to_h)
    end
    # CSV.foreach('./data/.csv', :headers => true) do |row|
    #   Merchant.create(row.to_h)
    # end
    # CSV.foreach('./data/merchants.csv', :headers => true) do |row|
    #   Merchant.create(row.to_h)
    # end
    # CSV.foreach('./data/merchants.csv', :headers => true) do |row|
    #   Merchant.create(row.to_h)
    # end
    # CSV.foreach('./data/merchants.csv', :headers => true) do |row|
    #   Merchant.create(row.to_h)
    # end
  end
end