FactoryGirl.define do
  factory :fighter do
    name "MyString"
    last_name "MyString"
    description "MyString"
    image Rack::Test::UploadedFile.new(Rails.root +
    'spec/fixtures/images/zergling.png', 'image/png')
    experience '10'
    win '0'
    lose '0'
    fights_count '0'
  end
end
