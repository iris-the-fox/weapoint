class Post < ApplicationRecord
	default_scope {order range: :desc}
end
