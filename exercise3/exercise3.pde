int [] numbers = new int[25];
float [] flower_hps = new float[5];
PImage water;
PImage flower_danger;
PImage flower_warning;
PImage flower_safe;
void setup()
{
  water = loadImage("water.png");
  flower_danger = loadImage("flower_danger.png");
  flower_warning = loadImage("flower_warning.png");
  flower_safe = loadImage("flower_safe.png");
  size(500,500);
}
void draw()
{
  background(255);
  for (int i = 0; i < numbers.length; ++i) {
    image(water, numbers[i], i*20);
  }

  for (int i = 0; i < flower_hps.length; ++i) {
    if (50+i*80 < numbers[24] && numbers[24] < 50+(i+1)*80) {
      flower_hps[i] += 5;
      if (flower_hps[i]>=100) {
        flower_hps[i] = 100;
      }
    }

    drawFlower(50 + i * 80, height - flower_danger.height , flower_hps[i]);
  }

  for (int i = 24; i >= 0; i--) {
    if ( i ==0) {
      numbers[i] = mouseX;
    }
    else {
      numbers[i] = numbers[i-1];  
    }
  }
}
void drawFlower(int x, int y,float hpValue)
{
  if (hpValue > 80) {
    image(flower_safe, x, y);
  }
  else if (hpValue <= 80 && hpValue > 40) {
    image(flower_warning, x, y);
  }
  else {
    image(flower_danger, x, y);
  }
}