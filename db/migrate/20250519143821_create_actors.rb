class CreateActors < ActiveRecord::Migration[7.2]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :movie

      t.timestamps
    end
  end
end
