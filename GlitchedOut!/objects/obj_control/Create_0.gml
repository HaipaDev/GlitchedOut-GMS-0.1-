/// @description  SET UP UDP HOLE PUNCHING 

/****
    WELCOME TO GMnet PUNCH!
    Please read the manual at http://gmnet.parakoopa.de - This will guide you through this demo!
    ****/
    
//show_message("Welcome to the GMnet PUNCH demo! Please read the manual first.#It will explain what is going on and will guide you through the topic and show you how to implement GMnet PUNCH in your game.")
var master_ip = "35.211.101.7"//"35.211.101.7"//get_string("Please enter the IP of your master server. If you don't have one yet leave this the default to connect to the demo server (might be down)","95.85.63.183");
var master_port = "6510"//real(get_string("Port? (Default is the demo servers port)","6510"));    

room_speed = 30;
udphp_config(master_ip,      //master_ip         string    IP of the master server
             master_port,    //master_port       real      Port on which the master server software listens.
             3*60*room_speed,//reconnect_intv    real      Interval in STEPS that the SERVER should reconnect to the master server.
             10*room_speed,  //timeouts          real      Timeout in STEPS after which server and client give up to connect to each other.
             true,           //debug             boolean   <see udphp_config>
             false);         //silent            boolean   <see udphp_config>

/* */
/*  */
