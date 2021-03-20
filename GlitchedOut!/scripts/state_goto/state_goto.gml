//state_goto(state)
/*
    Changes the state of the launcher / updater
*/

state = argument0;

switch(state) {
    case states.check_updates: state_check_updates(); break;
    case states.update_available: state_update_available(); break;
    case states.update_download: state_update_download(); break;
    case states.ready: state_ready(); break;
    case states.update_installed: state_ready(); break;
    case states.error: state_error();
}

