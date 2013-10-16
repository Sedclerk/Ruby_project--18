class Visit < ActiveRecord::Base
	belongs_to :visitable, :polymorphic => true
    has_many :visit_details
    belongs_to :blablabla, :polymorphic => true
end
