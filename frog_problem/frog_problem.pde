//simone cimolato 12/09/2019

int iterazioni = 100000;
int nMin = 1;
int nMax = 1000;
int n = nMin;
int scaleYFactor = 50;

void setup() {
  size(1000, 600);
  background(0);
  noSmooth();
}

void draw() {

  if (n >= nMax) noLoop();

  float media = 0;
  int i = 0;

  for (i = 0; i < iterazioni; i++) {
    int copia = n;
    int count = 0;

    while (copia > 0) {
      int salto = round(random(1, copia+1));
      copia -= salto;
      count++;
    }
    media += count;
  }
  
  media /= i;
  println(media);
  stroke(255);
  point(n, height - media*scaleYFactor);
  n++;
}
