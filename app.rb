require 'sinatra'
require 'sinatra/cross_origin'
require 'json'

set :bind, '0.0.0.0'
set :port, 3001

configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

options "*" do
  response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  response.headers["Access-Control-Allow-Origin"] = "*"
  200
end

get '/bundles' do
  content_type :json
  [
    {
      name: "rose",
      code: "R12",
      bundleTypes: [
        {
          quantity: 10,
          price: 1299
        },
        {
          quantity: 5,
          price: 699
        }
      ]
    },
    {
      name: "lily",
      code: "L09",
      bundleTypes: [
        {
          quantity: 9,
          price: 2495
        },
        {
          quantity: 6,
          price: 1695
        },
        {
          quantity: 3,
          price: 995
        }
      ]
    },
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