task :setup_products => :environment do 
	10.times do 
		Category.create(name: Faker::Commerce.department(1))
	end

	100.times do 
		Product.create(name: Faker::Commerce.product_name, price: Faker::Commerce.price, category_id: Category.all.pluck(:id).sample)
	end

end