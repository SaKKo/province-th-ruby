module ThProvince
  class Province

    @@data ||= JSON.parse(File.read("#{__dir__}/../data/province.json"))
    @@geography_id_to_data = @@data.values.group_by{|x| x["geography_id"]}

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
      ThProvince::Geography.find(@json["geography_id"])
    end

    def amphurs
      ThProvince::Amphur.amphurs_with_province_id(@json["id"])
    end

    def districts
      ThProvince::District.districts_with_province_id(@json["id"])
    end

    def self.provinces_with_geography_id(geography_id)
      arr = @@geography_id_to_data[geography_id]
      arr.map{|a| self.new(a)}
    end

  end
end
