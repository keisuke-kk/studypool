FactoryBot.define do

  factory :shop do
    name          {"keisuke"}
    detail        {"aaaaaaaaaaaa"}
    aicon_image   {"turrys.jpeg"}
    tel           {"00000000000"}
    address       {"aaaaaaaaaaaa"}
    url           {"aaaaaaaaaaaa"}
    created_at    { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end