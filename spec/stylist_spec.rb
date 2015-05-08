require('rspec')
require('pg')
require('client')
require('stylist')
require('rubygems')


describe(Stylist)  do


	describe('#name') do
		it('returns the stylist name') do
			stylist = Stylist.new ({:name => 'Brenda', :id => nil})
			expect(stylist.name()).to(eq('Brenda'))
		end
	end

	describe('#id') do
		it('returns and sets an id number for each stylist') do
			stylist = Stylist.new({:name => 'Brenda', :id => 1})
			expect(stylist.id()).to(eq(1))
		end
	end






































	
end