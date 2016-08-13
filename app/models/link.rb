class Link < ApplicationRecord
belongs_to :user
has_many :visits

def standardize_target_url!
end

end
