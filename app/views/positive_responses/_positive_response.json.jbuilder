json.extract! positive_response, :id, :station, :locateCode, :reason, :isNoteVisibleToContractor, :accountNameOfPositiveResponseProvider, :server_response, :ticket_id, :created_at, :updated_at
json.url positive_response_url(positive_response, format: :json)
