require_relative '../lib/airport'
require_relative '../lib/plane'
require_relative '../lib/weather'


describe 'Airport' do

	let(:airport) {Airport.new}

		it "should be open by default" do
			expect(airport.open?).to eq(true)
		end

		it "should be close when by weather is stormy" do
			expect(airport.closed?).to eq(true)
		end

		it "should only accept landings if weather is sunny" do
			expect(airport.accept_landing?).to eq(true)
		end

		it "should not accept landings when weather is stormy" do
			expect(airport.reject_landing?).to eq(true)
		end

end
