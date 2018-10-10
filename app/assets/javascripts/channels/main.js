//= require cable
//= require_self
//= require_tree .

this.App = {};

console.log('hello');

App.cable = ActionCable.createConsumer();  
App.messages = App.cable.subscriptions.create('MessagesChannel', {  
  received: function(data) {
    console.log('received', data);
  }
});
