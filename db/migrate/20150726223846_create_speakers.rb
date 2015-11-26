class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|

      t.boolean :approved
      t.text :description
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
