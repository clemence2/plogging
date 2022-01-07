class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.string :starts_localisation
      t.string :ends_localisation
      t.boolean :shared
      t.datetime :starts_date
      t.datetime :ends_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
