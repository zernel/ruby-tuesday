# -*- encoding: UTF-8 -*-
require 'spec_helper'

feature 'create party' do
  background do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

  scenario 'by user' do
    visit new_party_path

    within('.new-party') do
      #select('杭州', :from => 'district')
      fill_in 'party_topic', with: 'Javascript MVC'
      fill_in 'party_presenter', with: '@nowazhu'
      fill_in 'party_date', with: '2012年03月06日（周二） 晚上7:00点至8:30'
      fill_in 'party_address', with: '塘苗路18号华星产业园A座 4 楼'
      fill_in 'party_introduction', with: '欢迎 ruby 爱好者参加！'
      click_on('创建聚会')
    end

    Party.all.should have(1).item
  end
end
