class Webhook < ApplicationRecord
  after_create_commit :receive

  def receive
    require 'openssl'
    require "base64"

    if self.body['Message']['XMLBase64'].present?
    xml = self.body['Message']['XMLBase64']
    xml = Base64.decode64(xml)
    xml = JSON.parse(Hash.from_xml(xml).to_json)
    else
      xml = 'N/A'
    end

    if self.body['Message']['GMLBase64'].present?
      gml = self.body['Message']['GMLBase64']
      gml = Base64.decode64(gml)
      gml = JSON.parse(Hash.from_xml(gml).to_json)
    else
      gml = 'N/A'
    end

    Ticket.create(utility_name: self.body['Message']['UtilityName'],
                  station_code: self.body['Message']['StationCode'],
                  ticket_number: self.body['Message']['TicketNumber'],
                  data: xml,
                  gml_data: gml)
  end
end
