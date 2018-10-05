Changed_Key = keyboard_lastkey;
if(Changed_Key != 1){
	switch(control_to_change){
		case 8: default: 
			p1_rightR = Changed_Key;
			control_committed = -1;
			control_control = true;
			instance_destroy(self);
			break;
		case 7: 
			p1_leftR = Changed_Key;
			control_committed = -1;
			control_control = true;
			instance_destroy(self);
			break;
		case 6: 
			p1_acc = Changed_Key;
			control_committed = -1;
			control_control = true;
			instance_destroy(self);
			break;
		case 5: 
			p1_dec = Changed_Key;
			control_committed = -1;
			control_control = true;
			instance_destroy(self);
			break;
		case 4: 
			p2_rightR = Changed_Key;
			control_committed = -1;
			control_control = true;
			instance_destroy(self);
			break;
		case 3: 
			p2_leftR = Changed_Key;
			control_committed = -1;
			control_control = true;
			instance_destroy(self);
			break;
		case 2: 
			p2_acc = Changed_Key;
			control_committed = -1;
			control_control = true;
			instance_destroy(self);
			break;
		case 1: 
			p2_dec = Changed_Key;
			control_committed = -1;
			control_control = true;
			instance_destroy(self);
			break;
	}
}
if(Changed_Key = 1){
	
}
else{
	control_committed = -1;
	control_control = true;
	instance_destroy(self);
}