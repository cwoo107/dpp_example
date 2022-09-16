class AddTxtToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :txt, :string
  end
end
