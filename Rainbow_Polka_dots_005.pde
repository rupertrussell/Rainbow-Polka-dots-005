// artwork on redbubble at: https://www.redbubble.com/shop/ap/25019817

void setup() {
  size(13500, 11462);
  background(0);
}
float r=0;
float g=0;
float b=0;
float y;
float size = 500;
float click;
float step = 2;


void draw() {
  fill(r, g, b);

  for (float x = 0; x < width; x = x + size) {

    ellipse(x, y, size, size);
    if ( r <= 255 && g == 0 && b == 0 )
    {
      r = r + step;
    }

    if ( r >= 255 && g < 255 && b <= 0 )
    {
      g = g + step;
    }
    if ( g >= 255 && r > 0 && b <= 0 )
    {
      r = r - step;
    }
    if ( g >= 255 && b < 255 && r <= 0 )
    {
      b = b + step;
    }
    if ( b >= 255 && g > 0 && r <= 0 )
    {
      g = g - step;
      ;
    }
    if ( b >= 255 && r < 255 && g <= 0 )
    {
      r = r + step;
      ;
    }
    if ( r >= 255 && b > 0 && g <= 0 )
    {
      b = b - step;
      ;
    }
    fill(r, g, b);
    println("r = " + r);
    println("g = " + g);
    println("b = " + b);
    if (size > 10 )size = size - 0.01;

    if (x >= width - size) {
      y = y + size;
      if (y > height ) {
        y = 0;
        println("saving: " + "rainbow-3-" + click + ".png");
        save("rainbow-3" + click + ".png");
        println("Saved: " + "rainbow-3-" + click + ".png");
        click ++;
      }
    }
  }
}

void keyTyped() {
  println("typed " + float(key) + " " + keyCode);


  if (float(key) == 115) { // s for save
    save("rainbow-" + click + ".png");
    println("Saved: " + "rainbow-" + click + ".png");
    click ++;
  }

  if (float(key) == 120) {
    exit(); // x to exit the program
  }
}
