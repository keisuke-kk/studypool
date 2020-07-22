FactoryBot.define do

  factory :shop do
    name          {"keisuke"}
    detail        {"aaaaaaaaaaaa"}
    aicon_image   {"station.webp"}
    # attached      { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'station.webp'), 'images') }
    tel           {"00000000000"}
    address       {"aaaaaaaaaaaa"}
    url           {"aaaaaaaaaaaa"}
    created_at    { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end

end