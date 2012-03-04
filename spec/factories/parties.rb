# encoding: UTF-8

FactoryGirl.define do
  factory :party do
    topic 'Javascript MVC'
    presenter '@nowazhu'
    date '2011年03月06日（周二） 晚上7:00点至8:30'
    address "塘苗路18号华星产业园A座 4 楼"
    description "欢迎 ruby 爱好者参加！"
  end
end
