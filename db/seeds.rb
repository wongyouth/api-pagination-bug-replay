Category.create([
  {name: 'Men'},
  {name: 'Women'},
  {name: 'Baby'},
])

Category.all.each do |cat|
  Post.create title: "title-#{cat.id}", content: "content-#{cat.id}", category: cat
end

