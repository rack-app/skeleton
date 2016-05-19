require 'spec_helper'

describe App::Healthcheck do

  include Rack::App::Test
  rack_app described_class


  describe '/healthcheck' do
    subject { get url: '/healthcheck' }

    it { expect(subject.body).to eq 'OK' }
    it { expect(subject.status).to eq 200 }
  end

end
