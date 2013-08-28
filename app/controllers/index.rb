get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :index
end

get '/category/:category_url' do
  @category = Category.find_by_url("#{params[:category_url]}")
  @posts    = Post.where(category_id: @category.id) 
  erb :categories
end

get "/post/:post_id" do
  @category = Category.find_by_url("#{params[:category_url]}")
  @post    = Post.find(params[:post_id]) 
  erb :posts
end

get "/create" do
  erb :create
end

post "/create" do
 @post = Post.create(params)
 erb :create
end

get "/posts/edit/:post_url" do
  @post = Post.find_by_url(params[:post_url])
  @category = Category.find(@post.category_id)
  erb :edit
end

post "posts/edit/:post_url" do
  @post = Post.find_by_url(params[:post_url])
  # params[:id] = @post.id
  @post.save!(params)
  @category = Category.find(@post.category_id)
  @saved = true
  erb :edit
end
