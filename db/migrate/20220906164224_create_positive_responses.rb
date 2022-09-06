class CreatePositiveResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :positive_responses do |t|
      t.string :station
      t.string :locateCode
      t.string :reason
      t.boolean :isNoteVisibleToContractor
      t.string :accountNameOfPositiveResponseProvider
      t.string :server_response
      t.belongs_to :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
