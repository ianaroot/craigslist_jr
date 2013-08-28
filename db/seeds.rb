category_hard_code = ["Tickets", "Electronics", "Cars", "Boats", "Used Handkerchiefs", "Llama Adoption"]


category_hard_code.each do |cat|
  Category.create(:name => cat)
end

500.times do
  Post.create(  
    :category_id => (rand(5) + 1 ),
    :title       => Faker::Company.bs,
    :email       => Faker::Internet.email,
    :content     => Faker::Lorem.paragraph,
    :price       => (rand(40000) + 1)
    )
end
