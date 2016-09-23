FactoryGirl.define do
  factory(:user) do
    name('frank lin')
    phone('frank lin')
    address('frank lin')
    email('frank@test.com')
    password('welcome')
    password_confirmation('welcome')
  end
  factory(:dish) do
    name('ballpark franks')
    description('hot dogs from baseball')
    image('test image')
    association :user
  end
end
