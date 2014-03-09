require_relative '../lib/plane'
require_relative '../lib/weather'

describe 'Plane status' do 

	let(:plane) {Plane.new}

	it "should be flying by default when created" do
		plane.flying
		expect(plane.flying).to eq(true)
	end

	it 'should display "flying" status when in the air' do
		plane.current_status
		expect(plane.current_status).to eq(:flying)
	end

	it 'has a "flying" status after taking off' do
		plane.take_off
		expect(plane.take_off).to eq(true)
	end

	it 'should be able to land when weather is sunny' do
		plane.landed
		expect(plane.flying).not_to eq(true)
		expect(plane.current_status).to eq(:landed)
	end

	it 'should display its current status' do
		plane.current_status
		expect(plane.current_status).to eq( :flying || :landed )
	end
end
