Rails.application.routes.draw do
  mount Api::Api => '/', anchor: false
end
