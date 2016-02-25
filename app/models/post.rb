class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true    #user id must be there (cant create anything that doesnt have a user id)
  validates :content, presence: true, length: { maximum: 140 } #twitter has a cap of 140 characters so validate that their content is shorter than that.
  default_scope -> { order(created_at: :desc ) } #display newest posts (tweets) first
end
