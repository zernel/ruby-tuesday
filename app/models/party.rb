class Party
  include Mongoid::Document

  field :topic, :type => String
  field :presenter, :type => String
  field :date, :type => String
  field :address, :type => String
  field :introduction
end
