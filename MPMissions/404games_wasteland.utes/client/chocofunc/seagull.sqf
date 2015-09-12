chocoland globalChat" enjoy our new Animal, the seagull, Press Q to fly up, Y down, abort with key (F3)(we will improve this cameraView)";
closedialog 0;
cam = "seagull" camCreate (player modelToWorld [0,0,5]);
cam cameraEffect [ "FixedWithZoom", "back"];sleep 5;
cam cameraEffect [  "external", "top"]; cam camCommand "manual on";
seagull = true;
waituntil {!seagull};
cam cameraEffect ["terminate", "back"]; camDestroy cam;

