class BoardMessage < ApplicationRecord
  belongs_to :board_user
  after_create_commit { MessageBroadcastJob.perform_later self }

  validates :content, presence:{message:'は、必須事項です。'}
end
