/// @description  Start client OR load lobby
var lobby = show_question("Go to lobby? (if not you will be asked for the server details)");
if (lobby) {
   room_goto(udphhtme_lobby);
} else {
  //create a new client
  instance_create(0,0,obj_client);
}

