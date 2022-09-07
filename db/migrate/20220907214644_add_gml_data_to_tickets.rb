class AddGmlDataToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :gml_data, :json
  end
end
