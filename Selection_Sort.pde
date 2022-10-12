int[] ranNum = new int[800];

int swaps = 1;

void setup() {
  size(800, 400);

  for (int i = 0; i < ranNum.length; i++) {
    ranNum[i] = int(random(height));
  }
}

void draw() {
  background(15);

  stroke(255);

  for (int i = 0; i < ranNum.length; i++) {
    line(i, height, i, ranNum[i]);
  }
  if (swaps > 0) {
    swaps = 0;
    for (int i = 1; i < ranNum.length; i++) {
      int bigNum = 0;
      int val = 0;

      for (int j = 0; j < ranNum.length - i; j++) {
        if (ranNum[j] > bigNum) {
          bigNum = ranNum[j];
          val = j;
          swaps++;
        }
      }
      swap(ranNum, val, ranNum.length-i);
    }
  }
}

void swap(int[] arr, int numX, int numY) {
  int temp;
  temp = arr[numX];
  arr[numX] = arr[numY];
  arr[numY] = temp;
}
