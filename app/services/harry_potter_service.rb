class HarryPotterService
  def initialize(house)
    @house = house
  end
  def house_members
    params = {house: @house, orderOfThePhoenix: true}
    get_json('characters', params)
  end

  private

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1') do |req|
      req.params[:key] = ENV['HARRY_POTTER_KEY']
      req.adapter Faraday.default_adapter
    end
  end

  def get_json(url, params)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end
end
