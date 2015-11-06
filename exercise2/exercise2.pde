int [] numbers = new int[25];
PImage water;
void setup()
{
	water = loadImage("water.png");
	size(500,500);
}

void draw()
{
	background(255);
	for (int i = 0; i < numbers.length; ++i) {
		image(water, numbers[i], i * 20);
	}

	for (int i = numbers.length-1; i >= 0; i--) {
		if (i == 0) {
			numbers[i] = mouseX;
		}
		else{
			numbers[i] = numbers [i-1];	
		}
	}
}