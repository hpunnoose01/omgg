get '/' do
  @categories_raw = Category.all
  @categories = []
  @categories_raw.each do |x|
  @categories << x.name
  end
  # Look in app/views/index.erb
  erb :index, :layout => true
end


get '/categories/:category_name' do
  @category_name = params[:category_name]
  @category_id = Category.where("name = ?", @category_name).first.id
  @posts = Post.where('category_id = ?', @category_id)
  erb :categories, :layout => true

end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post, :layout => true
end


get '/create_post/:cat_id' do
  @pass_cat_id = params[:cat_id]
  erb :create_post, :layout => true
end

post '/create_post' do
  @subject = params[:subject]
  @description = params[:description]
  @cat_id = params[:cat_id]
  @email = params[:email]
  @price = params[:price]
  @key = (0...8).map{(65+rand(26)).chr}.join
  @post = Post.create(:subject => @subject, :description => @description, :category_id => @cat_id, :email => @email, :price => @price, :key => @key)
  erb :post, :layout => true
end

get '/edit/:key' do
  @key = params[:key]
  @post_id = Post.where("key = ?", @key).first
  erb :edit, :layout => true
end

post '/update' do
  @id = params[:id]
  @subject = params[:subject]
  @description = params[:description]
  @cat_id = params[:cat_id]
  @email = params[:email]
  @price = params[:price]
  @key = params[:key]
  @post = Post.update(@id, :subject => @subject, :description => @description, :category_id => @cat_id, :email => @email, :price => @price)
  erb :post, :layout => true
end
