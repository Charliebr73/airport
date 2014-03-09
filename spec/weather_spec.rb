require_relative '../lib/plane'
require_relative '../lib/airport'
require_relative '../lib/weather'

describe 'Weather' do 

	let(:weather_status) {Weather.new}

	it 'should be sunny by defeault' do
		expect(weather_status.weather).to eq('sunny')
	end

	it 'should be stormy randomly' do
		expect(weather_status.weather).not_to eq('sunny')
	end
	
end