require 'spec_helper'

describe 'HTTP interface' do
  context 'GET /' do
    it 'returns a hello response' do
      get '/'

      expect(last_response).to be_ok
      expect(last_response.body).to match('Hello world')
    end
  end
end
