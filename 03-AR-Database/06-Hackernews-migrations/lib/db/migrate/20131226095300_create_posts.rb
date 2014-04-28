class CreatePosts < ActiveRecord::Migration

  def up
    #TODO: your code here to create the Posts table
    create_table :posts do |table|
      table.string :name
      table.string :source_url
      table.datetime :date
    end
  end
end