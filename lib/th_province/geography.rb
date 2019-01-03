module ThProvince
  class Geography

    @@data ||= JSON.parse(File.read("#{__dir__}/../data/geography.json"))

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

    def provinces
      ThProvince::Province.provinces_with_geography_id(@json["id"])
    end

    def amphurs
      ThProvince::Amphur.amphur_with_geography_id(@json["id"])
    end

    def districts
      ThProvince::District.districts_with_geography_id(@json["id"])
    end

  end
end
