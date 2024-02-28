class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :book, null: false
      t.belongs_to :user, null: false
      t.date :returned_on

      t.timestamps
    end
  end
end
