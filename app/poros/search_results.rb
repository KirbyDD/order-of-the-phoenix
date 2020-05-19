class SearchResults
  def initialize(house)
    @house = house
    @harry_potter_service = HarryPotterService.new(house)
  end

  def house_members
    json = @harry_potter_service.house_members
    @members = json.map do |member_info|
      Member.new(member_info)
    end
  end
end
