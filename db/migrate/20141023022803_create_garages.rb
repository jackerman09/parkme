class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :name
      t.integer :company_id

      t.timestamps
    end
  end
end
