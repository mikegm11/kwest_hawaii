class AddPartnerToGuesses < ActiveRecord::Migration[5.1]
  def change
    add_column :guesses, :partner, :string
  end
end
