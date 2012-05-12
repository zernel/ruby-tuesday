class Comment
  include Mongoid::Document
  belongs_to :user
  belongs_to :party

  field :user_id, :type => Integer
  field :party_id, :type => Integer
  field :body, :type => String
end
