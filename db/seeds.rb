# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

6.times do |i|
  TestSet.create(name: "test_set#{i+1}")
  30.times do |j|
    Regression.create(name: "regression#{j+1}", description: "Some description", test_set_id: i+1)
    30.times do |k|
      TestItem.create(vectorname: "test_item#{k+1}", status: ["pass", "not test", "fail", "hang"].sample, frame_number: (0..29).to_a.sample, regression_id: 30*i+j+1)
    end
  end
end
