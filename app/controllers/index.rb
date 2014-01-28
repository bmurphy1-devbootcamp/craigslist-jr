get '/' do
  erb :index
end

get '/posts/new' do
  erb :new
end

post '/posts' do
  Post.create(title: params[:title],
            category_id: params[:category].to_i,
            description: params[:description],
            email: params[:email],
            price: params[:price].to_i,
            edit_key: (Post.last.id.to_i + 1).to_s)
  puts params
end

get '/posts/edit' do
end

get '/posts/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post
end

get '/categories/:category_id' do
  @posts = Post.where(category_id: params[:category_id])
  erb :category
end

get '/posts/edit/' do
  puts params
end

