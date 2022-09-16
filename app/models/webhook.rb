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
      xml = nil
    end

    if self.body['Message']['GMLBase64'].present?
      gml = self.body['Message']['GMLBase64']
      gml = Base64.decode64(gml)
      gml = JSON.parse(Hash.from_xml(gml).to_json)
    else
      gml = nil
    end

    if self.body['Message']['TXTBase64'].present?
      txt = self.body['Message']['TXTBase64']
      txt = Base64.decode64(txt)
    else
      gml = nil
    end

    Ticket.create(utility_name: self.body['Message']['UtilityName'],
                  station_code: self.body['Message']['StationCode'],
                  ticket_number: self.body['Message']['TicketNumber'],
                  data: xml,
                  gml_data: gml,
                  gif: self.body['Message']['GIFBase64'],
                  txt: txt)
  end
end
