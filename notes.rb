 Resources       Template      Method      Action

index            	yes			yes			Display all the content 

new					yes			yes         New registration 

create				no			yes         takes ip from new and save into dagtabase 

edit				yes			yes    		holds a form to edit an existing object

update				no			yes    		takes ip from edit and update into dagtabase     


show				yes			yes         individual records


destroy				no			yes        to delete


Comamnd to create a table .

rails g model model_name column_names:with_their_types

rails g model user name:string email:string password:string confirm_password:string mobile:string status:boolean



How to login toi rails db

1. make sure you are in project folder

rails console 

To add tables n all run below command 

rake db:migrate



To see the tables hit below command from your console 
ActiveRecord::Base.connection.tables 



Note :To see the table user models class name .



Create and save record into DB

user = User.new({name: 'Abc', email: 'abc@gmail.com', password: 'abc@123', confirm_password: 'abc@123', mobile: '+152134545', status: true})
user.save



OR


User.create(({name: 'Xyz', email: 'xyz@gmail.com', password: 'xyz@123', confirm_password: 'xyz@123', mobile: '+152134545', status: true}))

https://launchschool.com/blog/integrating-rails-and-bootstrap-part-1


We can generate forms in rails using two approach 
1. form_for  # require an object to support a form default call create function to save all the user input into database
2. form_tag  # does not require any object and need url to call a function 



session : key and value pair storage(a hash) at server side and get use to store user information 
cookies : key and value pair storage(a hash) at client side and get use to store user information 


session[:key] =  value_

Filter in rails 

before_action :action_name
def action_name
  logic
end


validation # validates the user input . only in model 
callbacks # they are the hooks in active record object life cycle and helps to manipulatge the data.
association 
paperclip
mailer
regular
helper





Rest Api - Representational state transfer .

use curl command to hit your methods .
-X GET for get all data . 
-X PUT for update
-d for post method 
-X DEELTE for delete 

To call index method 
curl -X GET http://localhost:3000/api/users.json

To call create method 
curl -d "user[name]=api test&user[email]=apitest@gmail.com&user[password]=admin123&user[confirm_password]=admin123&user[mobile]=54332455566"   http://localhost:3000/api/users.json


add gem 'paperclip'
install sudo apt-get install imagemagick -y

To  add image table

 rails g model image  #adding a new model called image
 rails g paperclip image photo #using gem paperclip and creating fields for photo
 rake db:migrate 
 rails g migration add_column_to_image user:belongs_to 
 rake db:migrate




To set your email and password as environment variable

in teminal $: vim ~/.bashrc

bashrc file get opens
now press i to insert
type
       export EMAIL='xyz@gmail'
       export PASSWORD='xyz'
press esc 
type :wq

now generate a mailer with