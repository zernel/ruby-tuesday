class Party
  include Mongoid::Document

  paginates_per 5

  field :topic, :type => String
  field :location, :type => String
  field :presenter, :type => String
  field :date, :type => String
  field :address, :type => String
  field :introduction

  validates :location, presence: true
  validates :topic, presence: true
  validates :date, presence: true
  validates :address, presence: true

  def title
    "[#{location}][#{date}] #{topic}"
  end
end
