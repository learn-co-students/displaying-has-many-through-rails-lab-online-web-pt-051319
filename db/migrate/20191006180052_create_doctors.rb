class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :appointmentse
      t.string :app/email

      t.timestamps
    end
  end
end
