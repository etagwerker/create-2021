ActiveRecord::Base.connected_to(role: :reading, shard: :shard_one) do
   Record.first # lookup record from read replica of shard one
 end

