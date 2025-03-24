class CreateReferences < ActiveRecord::Migration[8.0]
  def change
    create_table :references do |t|
      t.string :name
      t.string :email_address
      t.references :applicant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
