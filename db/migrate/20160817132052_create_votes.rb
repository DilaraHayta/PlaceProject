class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :place, foreign_key: true
      t.references :customer, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
