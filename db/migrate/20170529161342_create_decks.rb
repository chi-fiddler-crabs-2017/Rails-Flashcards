class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :topic

      t.timestamps
    end
  end
end
