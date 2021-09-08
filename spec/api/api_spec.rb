require_relative '../spec_helper'
require_relative 'api_client.rb'
require 'securerandom'

RSpec.describe 'Create -> Login -> Get' do

  app_cl = ApiClient.new
  body = app_cl.generate_random_body

  context 'verify user info' do
    it 'verifies user can registered' do
      response = app_cl.create_user(body)
      expect(response.status).to eq(200)
    end

    it 'verifies user can login' do
      response = app_cl.user_login(body[:username], body[:password])
      expect(response.status).to eq(200)
    end

    it 'verifies user can get info' do
      # this test is flaky
      # sometimes passes, sometimes no
      # investigate the reason
      # must be something with user created
      response = app_cl.get_user(body[:username])
      expect(response.status).to eq(200)
    end
  end
end
