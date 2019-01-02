module Th
  class District
    @@data ||= JSON.parse(File.read("#{__dir__}/../data/district.json"))
    @@geography_id_to_data = @@data.values.group_by{|x| x["geography_id"]}
    @@province_id_to_data = @@data.values.group_by{|x| x["province_id"]}
    @@amphur_id_to_data = @@data.values.group_by{|x| x["amphur_id"]}

    def self.data
      @@data
    end

    def self.all
      @@data.values
    end

    def self.find(id)
      json = @@data[id.to_s]
      return self.new(@@data[id.to_s]) if !json.nil?
      nil
    end

    def initialize(json)
      @json = json
    end

    def as_json
      @json
    end

    def geography
      Th::Geography.find(@json["geography_id"])
    end

    def province
      Th::Province.find(@json["province_id"])
    end

    def amphur
      Th::Amphur.find(@json["amphur_id"])
    end

    def self.districts_with_geography_id(geography_id)
      arr = @@geography_id_to_data[geography_id]
      arr.map{|a| self.new(a)}
    end

    def self.districts_with_province_id(province_id)
      arr = @@province_id_to_data[province_id]
      arr.map{|a| self.new(a)}
    end

    def self.districts_with_amphur_id(amphur_id)
      arr = @@amphur_id_to_data[amphur_id]
      arr.map{|a| self.new(a)}
    end
  end
end
