# frozen_string_literal: true

FactoryGirl.define do
  factory :shop do
    name { Faker::Name.name }
  end
end
