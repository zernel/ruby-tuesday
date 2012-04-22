# -*- encoding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(nickname: 'Christin', email: 'admin@ruby-tuesday.com', password: '123456', password_confirmation: '123456')
User.create!(nickname: 'Zernel', email: 'itzernel@gmail.com', password: '123456', password_confirmation: '123456')

3.times do
  Party.create!(location: '杭州', topic: '近期项目介绍', date: '2012-04-17', address: '杭州西湖区教工路18号 世贸丽晶城EAC 1号楼C1407（百脑汇对面）', presenter: '@yedingding', introduction: '好好学习，天天向上')
  Party.create!(location: '深圳', topic: 'szRuby Meetup', date: '2012-04-25', address: '深圳南山华侨城OCT创意文化园北区A4栋216号', presenter: 'Howard', introduction: '深圳的 Rubyist 难得聚在一起，上次大家肯定聊得不够。赶在 5/1 前，大家再来 meetup')
  Party.create!(location: '北京', topic: 'Ruby Tuesday 第0场', date: '2012-02-21', address: '北京贝塔咖啡（BetaCafe），位于中关村原第三极一层', presenter: 'tualatrix', introduction: '虽然还是Ruby菜鸟，但是我想集结其他一样对Ruby感兴趣的朋友，一起交流，一起进步。正巧已经联系到两个朋友，因此就直接决定订在明天晚上进行一个Ruby Tuesday聚会。')
  Party.create!(location: '上海', topic: 'Ruby Tuesday聚会', date: '2012-04-24', address: '浦东新区世纪大道8号上海国金中心D座B1楼LG1-37室，COSTA COFFEE(国金中心店)', presenter: 'King', introduction: '由 @lgn21st 分享OAuth2的前世今生，实现方法。大家一起探讨一下关于OAuth2的更多应用场景。')
  Party.create!(location: '长沙', topic: 'Ruby Changsha Garhering', date: '2012-04-02', address: '长沙市岳麓区中南大学南校1cm书吧', presenter: 'Jacky', introduction: 'Hello world')
end
