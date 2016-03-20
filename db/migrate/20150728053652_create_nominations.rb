class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|

      t.string :submitter_name
      t.string :submitter_email
      t.text :description

      t.references :speaker, index: true

      t.timestamps
    end
  end
end
