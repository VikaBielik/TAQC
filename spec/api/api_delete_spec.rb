require_relative '../spec_helper'
require_relative 'api_client.rb'
require 'securerandom'
#rspec spec/api/api_delete_spec.rb  --color --format doc

RSpec.describe 'DELETE method ' do

  app_cl = ApiClient.new
  body = app_cl.generate_random_body

  before(:all) do

     app_cl.create_user(body)
     
  end

  context 'Delete method checking' do

    it 'verifies delete existing user' do  
      app_cl.user_login(body[:username], body[:password])
      app_cl.user_logout
      app_cl.delete_user(body[:username])
      response = app_cl.get_user(body[:username])
      expect(response.status).to eq(200)
    end

    it 'verifies delete non-existing user' do  
      app_cl.delete_user("user_#{SecureRandom.hex}")
      response = app_cl.get_user(body[:username])
      expect(response.status).to eq(200)
    end
  end

  context 'verifies work with invalid data' do

    data = ['A'*51,
    'Ia',
    '&ks#jdkca',
    '163738jfkdl']
    data.each{|username| 

    it 'verifies delete existed user invalid username' do  
      app_cl.create_user(body)
      body[:username] = username
      app_cl.update_user(body[:username], body)
      response = app_cl.delete_user(body[username])
      expect(response.status).to eq(405)
    end}

  end

end

