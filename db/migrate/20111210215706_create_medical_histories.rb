class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.text :history
      t.text :allergies
      t.text :familyHistory
      t.string :images
      t.text :appointments
      t.integer :user_id

      t.timestamps
    end
    add_index :medical_histories, :user_id
  end
  
end
