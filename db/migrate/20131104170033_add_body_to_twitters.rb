class AddBodyToTwitters < ActiveRecord::Migration
  def change
    add_column :twitters, :body, :string
  end
end
