class CreateJets < ActiveRecord::Migration
  def change
    create_table :jets do |t|
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
