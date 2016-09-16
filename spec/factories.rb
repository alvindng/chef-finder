FactoryGirl.define do
  factory(:chef) do
    name('Mo Johnson')
    phone('312-555-5555')
    address('123 Sock St')
  end
  factory(:dish) do
    name('Mo Johnson')
    description('312-555-5555')
    image('123 Sock St')
    chef_id(1)
  end
end
