require "csv"

class Cookbook

  attr_reader :contents

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    load_csv
  end

  def load_csv
    @contents = []
    CSV.foreach(@file) do |row| @contents << row.first
    end
  end

  # def retrieve(contents)
  #   "here are your recipes : "
  #   @contents.each_with_index do |item, index|
  #     "#{index+1}. #{item}"
  #   end
  # end

  def delete_one_recipe(index)
    @contents.delete_at(index-1)
    CSV.open(@file, 'w') do |csv|
      @contents.each do |name|
        csv << [name]
      end
    end
  end

  def add_recipe(name_recipe)
    @contents << name_recipe
    CSV.open(@file, "a") do |csv|
    csv << [name_recipe]
   end
    end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.
end

#my_cookbook = CookBook.new ("lib/cookbook/recipes.csv")







