module ArtemisApi
  class Zone < ArtemisApi::Model
    json_type 'zones'
    related_to_one 'sub_stage'

    def self.find(id:, facility_id:, client:, include: nil, force: false)
      client.find_one(self.json_type, id, facility_id: facility_id, include: include, force: force)
    end

    def self.find_all(facility_id:, client:, include: nil, filters: nil)
      client.find_all(self.json_type, facility_id: facility_id, include: include, filters: filters)
    end
  end
end
