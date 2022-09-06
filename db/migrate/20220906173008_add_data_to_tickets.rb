class AddDataToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :data, :json
  end
end
