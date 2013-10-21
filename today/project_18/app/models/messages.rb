class Messages < ActiveRecord::Base
   has_one :visit, :as => :visitable
end
