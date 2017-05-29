class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.string :guess_text
      t.boolean :correct
      t.references :card, foreign_key: true
      t.references :round, foreign_key: true

      t.timestamps
    end
  end
end
