# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Skill.delete_all
User.delete_all

SKILLS = %w{C C++ obj-C swift Ruby}
SKILLS.each { |skill| Skill.create(name: skill) }

[
  {
    name: 'Keisuke',
    age: 27,
    skills: ['C', 'C++', 'obj-C', 'Ruby']
  }
].each do |user|
  u = User.create(name: user[:name], age: 27)

  user[:skills].each do |skill_name|
    u.skills << Skill.find_by_name(skill_name)
  end

  u.save
end
