class Comment < ApplicationRecord
  include Visible
  # sets up an Active Record association
  belongs_to :article
end
