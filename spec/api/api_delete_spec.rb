require_relative '../spec_helper'
require_relative 'api_client.rb'
require 'securerandom'

RSpec.describe 'DELETE method ' do

  app_cl = ApiClient.new
  body = app_cl.generate_random_body

  before(:all) do
     app_cl.create_user(body)
  end

  context 'verify username passed to enpoint can be valid and invalid ' do

    it 'verifies delete existing user' do  #1
      response = app_cl.delete_user(body[:username])
      expect(response.status).to eq(200)
    end
    
    it 'verifies delete not-existing user' do   #2
        app_cl.create_user(body)
        app_cl.delete_user(body[:username])
        response = app_cl.delete_user(body[:username])
        expect(response.status).to eq(404)
    end

    it 'verifies delete valid username' do   #3
        body[:username] = 'ihavetoolong'
        app_cl.create_user(body)
        response = app_cl.delete_user(body[:username])
        expect(response.status).to eq(200)
    end

    it 'verifies delete invalid username' do  #to long 4
        body[:username] = 'i'* 51
        app_cl.create_user(body)
        response = app_cl.delete_user(body[:username])
        expect(response.status).to eq(400)
    end

    it 'verifies delete invalid username' do #to short 5
      body[:username] = 'iI'
      app_cl.create_user(body)
      response = app_cl.delete_user(body[:username])
      expect(response.status).to eq(400)
   end
    
   it 'verifies delete invalid username' do #6
    body[:username] = 'iI85&_1'
    app_cl.create_user(body)
    response = app_cl.delete_user(body[:username])
    expect(response.status).to eq(400)
 end

  end

end

#rspec spec/api/api_delete_spec.rb  --color --format doc