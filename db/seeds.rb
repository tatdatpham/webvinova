# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create(email: 'dat@gmail.com', password: '123', fullname: 'Pham Tat Dat', birthday: '1993-01-01', phone: '03903029')
users = User.create(email: 'hai@gmail.com', password: '123', fullname: 'Nguyen Duc Hai', birthday: '1993-04-01', phone: '0434034434')
users = User.create(email: 'justin@gmail.com', password: '123', fullname: 'Nguyen Binh Dieu', birthday: '1990-02-01', phone: '083920293')

posts = Post.create(title: 'VSVA Protortype day', content: 'content for VSVA Protortype day', sharewith: '0', view: '0', status: '-1', user_id: '1')
posts = Post.create(title: 'VSVA Protortype day 1', content: 'content for VSVA Protortype day 1', sharewith: '0', view: '0', status: '0', user_id: '1')
posts = Post.create(title: 'VSVA Protortype day 2', content: 'content for VSVA Protortype day 2', sharewith: '0', view: '0', status: '1', user_id: '1')
posts = Post.create(title: 'VSVA Protortype day 3', content: 'content for VSVA Protortype day 3', sharewith: '1', view: '0', status: '-1', user_id: '1')
posts = Post.create(title: 'VSVA Protortype day 4', content: 'content for VSVA Protortype day 4', sharewith: '1', view: '0', status: '0', user_id: '1')
posts = Post.create(title: 'VSVA Protortype day 5', content: 'content for VSVA Protortype day 5', sharewith: '1', view: '0', status: '1', user_id: '1')

posts = Post.create(title: 'VSVA Protortype day', content: 'content for VSVA Protortype day', sharewith: '0', view: '0', status: '-1', user_id: '2')
posts = Post.create(title: 'VSVA Protortype day 1', content: 'content for VSVA Protortype day 1', sharewith: '0', view: '0', status: '0', user_id: '2')
posts = Post.create(title: 'VSVA Protortype day 2', content: 'content for VSVA Protortype day 2', sharewith: '0', view: '0', status: '1', user_id: '2')
posts = Post.create(title: 'VSVA Protortype day 3', content: 'content for VSVA Protortype day 3', sharewith: '1', view: '0', status: '-1', user_id: '2')
posts = Post.create(title: 'VSVA Protortype day 4', content: 'content for VSVA Protortype day 4', sharewith: '1', view: '0', status: '0', user_id: '2')
posts = Post.create(title: 'VSVA Protortype day 5', content: 'content for VSVA Protortype day 5', sharewith: '1', view: '0', status: '1', user_id: '2')
