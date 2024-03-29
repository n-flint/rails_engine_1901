require 'rails_helper'

describe 'Merchants API' do
  it 'sends a list of merchants' do
    create_list(:merchant, 3)

    get '/api/v1/merchants'

    expect(response).to be_successful

    merchants = JSON.parse(response.body)

    expect(merchants["data"].count).to eq(3)

  end

  it 'sends a single merchant' do
    merchant = create(:merchant)
    id = merchant.id

    get "/api/v1/merchants/#{id}"

    merchant = JSON.parse(response.body)


    expect(response).to be_successful
    expect(merchant["data"]["attributes"]["id"]).to eq(id)
  end
end