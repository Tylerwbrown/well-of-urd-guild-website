class User < ApplicationRecord
  enum rank: [:recruit, :member, :guardsman, :officer, :warmaster, :master_of_coin, :right_hand, :guildmaster]
end
