<<-DOC

HTTP Challenge
--------------

* Define the common HTTP verbs
  - GET: request to read data from the webserver
  - POST: request to add data to the webserver
  - PUT/PATCH: request to edit/replace/update data to the webserver
  - DELETE: request to destroy data from the webserver

* Use the tool of your choice to draw the HTTP request/response cycle.
  - include a link to your diagram, here:
  https://imgur.com/m0Vmqno

* Use telnet, curl, or ruby code to retrieve the messages at
  launch-academy-chat.herokuapp.com/messages

* Use telnet, curl, or ruby code to create a new message at
  launch-academy-chat.herokuapp.com/messages

  - Kernel::system method in ruby will allow you to execute command-line utilities such as curl.
  - other useful ruby libraries:
    * Net::HTTP
    * Net::Telnet

DOC

require 'net/http'
# require 'uri'

# code goes here
url = "https://launch-academy-chat.herokuapp.com/messages"
uri = URI(url)


Net::HTTP.post_form uri, { "content" => "ruby rocks" }

res = Net::HTTP.get(uri)

puts res



# req = Net::HTTP::Post.new(uri)

# curl --data "content=cmdline post" launch-academy-chat.herokuapp.com/messages

# req.set_form_data('content' => 'this is a test')

# req.set_form_data('content' => 'this is a test')

# Net::HTTP.get('http://www.launch-academy-chat.herokuapp.com/messages')
