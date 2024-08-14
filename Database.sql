# Generate 'User' model
rails generate model User username:string email:string

# Generate 'Post' model
rails generate model Post user:references title:string content:text

# Migrate the database
rails db:create db:migrate

# In db/migrate/[timestamp]_create_posts.rb
add_index :posts, :user_id

(app/models/user.rb and app/models/post.rb):
# app/models/user.rb
class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
end

# app/models/post.rb
class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
end

