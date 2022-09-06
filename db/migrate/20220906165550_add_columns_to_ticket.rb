class AddColumnsToTicket < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :station_code, :string
    add_column :tickets, :utility_name, :string
    add_column :tickets, :ticket_number, :string
  end
end
