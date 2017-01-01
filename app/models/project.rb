class Project < ApplicationRecord
    enum status: { unpublished: 0, preview: 1, published: 2 }
end
