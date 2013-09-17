FactoryGirl.define do 
  factory :contact do
    first_name "Liz"
    last_name "glavin"
    subject "awesome"
    sequence(:email) {|n| "eglavi#{n}@gmail.com"}
    description "is awesome"
  end
end