# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tool.create(name: 'GodTools', link: 'goodtools.com')
Tool.create(name: 'MyCru', link: 'mycru.org')
Tool.create(name: 'Bible Project', link: 'tbp.com')
Tool.create(name: 'Jesus Film', link: 'jcfilm.com')
Rating.create(tool_id: 1, user_id: 1, value: 5, name: 'effective')
Rating.create(tool_id: 1, user_id: 1, value: 4, name: 'effective')
Rating.create(tool_id: 1, user_id: 1, value: 4, name: 'usable')
Rating.create(tool_id: 1, user_id: 1, value: 2, name: 'intuitive')
Rating.create(tool_id: 1, user_id: 1, value: 4, name: 'intuitive')
Comment.create(tool_id: 1, user_id: 1, content: 'This is a great app!')
Comment.create(tool_id: 1, user_id: 1, content: 'Did I mention this was a great app?!')