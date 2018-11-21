class Learning < ApplicationRecord
	default_scope {order range: :desc, created_at: :desc}
end
