# closeio-lead-creation

Simple script created using Close.io ruby wrapper to publish a new lead through the API. If the email does not currently exist in your Close.io account, it will post. If the email already exists, the script returns no data. If you would like to view all the data about an existing lead, there is a puts statement showing that information if the lead exists and is found.

To run:

`ruby close-lead-creation.rb john@example.com`
