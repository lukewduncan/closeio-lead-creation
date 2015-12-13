require 'rest-client'
require 'json'
require 'closeio'
require 'open-uri'

API_KEY = ENV["CLOSEIO_API_KEY"]
client = Closeio::Client.new(CLOSEIO_API_KEY)

  test_lead = client.list_leads({email_address: ARGV[0] })

  # Will list out any information about current leads or return no data
  puts ARGV[0]

  # if no email found, create lead and send to close.io
  if test_lead.total_results == 0
    client.create_lead(
        name: 'Example Company',
        contacts: [{
          name: "John Apple",
          emails: [{
            email: "John@example.com"
          }]
        }]
        )
    puts "Lead created and sent to close.io"
  else 
    puts "Email already exists within close.io"
  end