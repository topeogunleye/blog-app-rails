class CreateBlog < ActiveRecord::Migration[7.0]
  def change
    create_table :Comments do |t|
      t.string :author_id
      t.string :post_id
      t.string :test
      t.string :updatedat
      t.string :createdat

      t.timestamps
    end
    create_table :User do |t|
      t.string :name
      t.string :photo
      t.string :bio
      t.string :updatedat
      t.string :createdat
      t.string :posts_counter

      t.timestamps
    end
    create_table :Post do |t|
      t.string :author_id
      t.string :title
      t.string :text
      t.string :createdat
      t.string :updatedat
      t.string :comments_counter
      t.string :likes_counter

      t.timestamps
    end

    create_table :Like do |t|
      t.string :author_id
      t.string :post_id
      t.string :createdat
      t.string :updatedat
    end
    add_index :Comments, :author_id
    add_index :Comments, :post_id
    add_index :User, :name
    add_index :User, :posts_counter
    add_index :Post, :author_id
    add_index :Like, :author_id
  end



end
