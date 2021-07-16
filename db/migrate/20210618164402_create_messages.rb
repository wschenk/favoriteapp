class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :body
      t.boolean :processed

      t.timestamps
    end
  end
end
