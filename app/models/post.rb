class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    # def most_recent
    #     Destination.order("created_at DESC").first(5)
    # end
end
