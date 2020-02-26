require 'sinatra'
require 'json'

set :port, 3001

get '/bundles' do
  content_type :json
  [
    {
      name: "tulip",
      code: "T58",
      bundleTypes: [
        {
          quantity: 9,
          price: 1699
        },
        {
          quantity: 5,
          price: 995
        },
        {
          quantity: 3,
          price: 595
        }
      ]
    }
  ].to_json
end