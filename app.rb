require "sinatra"
require "sendgrid-ruby"
require "pp"
include SendGrid

from = Email.new(email: 'madalena73@gmail.com')
to = Email.new(email: 'madalena73@gmail.com')


get '/' do
    erb :index
end

get '/cakes' do
    erb :cakes
end

get '/pains' do
    erb :pains
end

get '/savory' do
    erb :savory
end

=begin
post '/form' do
    from = Email.new(email:"madalena73@gmail.com"')
    to = Email.new(email: params[:email])
    subject = "La Boulangerie Fin du Siècle Catalog"
    content = Content.new(type: 'text/html',
    value: '<img src="images/bakeress_icon.png"><p><strong>La Boulangerie Fin du Siècle Catalog</strong>
    <p>Gâteaux & Tartes:</p>
    <br>Tarte Tatan aux Fleurs Cake - $68.00/ea</br>
    <br>Baba au Rhum Berry Cake - $68.00/ea</br>
    <br>Sliced Almond Profiterole Pie - $46.00/ea</br>
    <p>Pains & Biscuits:</p>
    <br>Rosemary Fig Blueberry Bread - $23.00/ea</br>
    <br>Multi-Grain Crusty Baguette - $12.00/ea</br>
    <br>Biscuits ala Louise - $17.00/dozen</br>
    <p>Gâteries Savoureuses:</p>
    <br>Sun-dried Tomato Cream Tartlette - $36.00/ea</br>
    <br>Red Tomato and Fontina Cheese Tartlette - $32.00/ea</br>
    <br>Sugar-Cured Bacon and Cranberry Pie - $40.00</br>
    ')
    mail = Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    pp response


    redirect "/"

end

get "/thankyou" do

end
=end
