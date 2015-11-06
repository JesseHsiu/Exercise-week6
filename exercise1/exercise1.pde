int [] numbers = new int[25];
void setup()
{
	size(500,500);
}

void draw()
{
	background(255);
	fill(0, 255, 255);
	for (int i = 0; i < numbers.length; ++i) {
		rect(i * 20, 0, 20, (numbers[i]%500));
	}
	numbers[mouseX / 20] += 1;
}