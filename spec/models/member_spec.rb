require 'rails_helper'

RSpec.describe Member, type: :model do
  it 'should have attributes' do
    info = {:_id=>"5a1096b33dc2080021cd8762",
      :name=>"Aberforth Dumbledore",
      :role=>"Owner, Hog's Head Inn",
      :house=>"Gryffindor",
      :school=>"Hogwarts School of Witchcraft and Wizardry",
      :alias=>"Ab",
      :patronus=>"goat",
      :__v=>0,
      :ministryOfMagic=>false,
      :orderOfThePhoenix=>true,
      :dumbledoresArmy=>false,
      :deathEater=>false,
      :bloodStatus=>"half-blood",
      :species=>"human"
    }
    member = Member.new(info)

    expect(member.name).to eq("Aberforth Dumbledore")
    expect(member.house).to eq("Gryffindor")
    expect(member.role).to eq("Owner, Hog's Head Inn")
    expect(member.patronus).to eq("goat")
  end
end
