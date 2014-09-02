Rails.application.middleware.insert_after "ActionDispatch::BestStandardsSupport", "Drapery::Routing"
