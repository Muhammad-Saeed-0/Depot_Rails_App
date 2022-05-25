# Note that this code uses %{…}. This is an alternative syntax for doublequoted string literals,
# convenient for use with long strings. Note also that because it uses the Rails create!() method,
# it’ll raise an exception if records can’t be inserted because of validation errors.)
#
#
Product.delete_all
# . . .
Product.create!(title: 'Build Chatbot Interactions', description: %{Responsive, Intuitive Interfaces with Ruby
The next step in the evolution of user interfaces is here.
Chatbots let your users interact with your service in their
own natural language. Use free and open source tools along
with Ruby to build creative, useful, and unexpected interactions
for users. Take advantage of the Lita framework’s step-by-step
implementation strategy to simplify bot development and testing.
From novices to experts, chatbots are an area in which everyone
can participate. Exercise your creativity by creating chatbot
skills for communicating, information, and fun.},
 image_url: 'dpchat.jpg',
 price: 20.00)
# . . .
#