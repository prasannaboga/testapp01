class CreateMetaFields < ActiveRecord::Migration[5.2]
  def change
    create_table :meta_fields do |t|
      t.references :user, index: true
      t.string :name
      t.string :value
      t.timestamps
    end
  end
end
