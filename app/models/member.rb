class Member
  attr_reader :name, :house, :role, :patronus
  def initialize(info)
    @name = info[:name]
    @house = info[:house]
    @role = info[:role] || nil
    @patronus = info[:patronus] || nil
  end
end
