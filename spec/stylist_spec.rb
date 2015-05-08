require('rspec')
require('pg')
require('client')
require('stylist')
require('rubygems')
require('pry')

DB = PG.connect({:dbname => "hair_salon_test"})

RSpec.configure do |config|
	config.after(:each) do
		DB.exec("DELETE FROM stylists *;")
	end
end


describe(Stylist)  do
		describe('#name') do
		it('returns the stylist name') do
			stylist = Stylist.new ({:name => 'Brenda', :id => nil})
			expect(stylist.name()).to(eq('Brenda'))
		end
	end

	describe('#id') do
		it('sets an ID when you save it') do
			stylist = Stylist.new({:name => 'Brenda', :id => nil})
			stylist.save()
			expect(stylist.id()).to(be_an_instance_of(Fixnum))
		end
	end

	describe('.all') do
		it('starts off empty') do
			expect(Stylist.all()).to(eq([]))
		end
	end

	# describe('.find') do
	# 	it('returns a stylist by its id')do
	# 	test_stylist = Stylist.new({:name => 'Brenda', :id => nil})
	# 	test_stylist.save()
	# 	test_stylist2 = Stylist.new({:name => 'Jane', :Id => nil })
	# 	test_stylist2.save()
	# 	expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
	# 	end
	# end

	describe('#save') do
		it('allows you to save stylists to the database') do
			stylist = Stylist.new({:name => 'Brenda', :id => nil})
			stylist.save()
			expect(Stylist.all()).to(eq([stylist]))
		end
	end

	describe('#==') do
		it('is the same stylist if it has the same name and id ') do
			stylist1 = Stylist.new({:name => 'Brenda', :id => nil})
			stylist2 = Stylist.new({:name => 'Brenda', :id => nil})
			expect(stylist1).to(eq(stylist2))
		end
	end

#end




































	
end