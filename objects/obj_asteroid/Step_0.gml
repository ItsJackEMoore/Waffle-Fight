image_angle = image_angle + rotation;
x = x + (dcos(direc) * velo);
y = y + (dsin(direc) *velo);

if (x < 0) {
	x = room_width;
	offsetx1 = 180 - direc;
	direc = random_range((135 - offsetx1),(225 - offsetx1));
	rotation = random_range(-0.25,0.25);
	if (rotation < 0) {
		rotation = rotation - 1;
	}
	if (rotation >= 0) {
		rotation = rotation + 1;
	}
}

if (x > room_width) {
	x = 0;
	offsetx2 = 0 - direc;
	direc = random_range((-45 - offsetx2),(45 - offsetx2));
	rotation = random_range(-0.25,0.25);
	if (rotation < 0) {
		rotation = rotation - 1;
	}
	if (rotation >= 0) {
		rotation = rotation + 1;
	}
}

if (y < 0) {
	y = room_height;
	offsety1 = 270 - direc;
	direc = random_range((225 - offsety1),(315 - offsety1));
	rotation = random_range(-0.25,0.25);
	if (rotation < 0) {
		rotation = rotation - 1;
	}
	if (rotation >= 0) {
		rotation = rotation + 1;
	}
}

if (y > room_height) {
	y = 0;
	offsety2 = 90 - direc;
	direc = random_range((45 - offsety2),(135 - offsety2));
	rotation = random_range(-0.25,0.25);
	if (rotation < 0) {
		rotation = rotation - 1;
	}
	if (rotation >= 0) {
		rotation = rotation + 1;
	}
}