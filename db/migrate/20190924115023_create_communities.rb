class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.string :email
      t.string :name
      t.date :date_of_creation
    end
  end
end
