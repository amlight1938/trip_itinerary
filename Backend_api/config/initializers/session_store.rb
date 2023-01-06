app_name = 'backend-api'
if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: ['_' + app_name], domain: [app_name + '-json-api']
else
    Rails.application.config.session_store :cookie_store, key: ['_' + app_name]
end