Ball[] bs = new Ball[10];

int score = 0;

void setup() {
    size(1000,800);
    
    int y = 100;
    
    for (int i = 0; i < 10;i++) {
        int s = (int)(Math.random() * 50) + 40;
        int rx = (int)(Math.random() * 500) - 250;
        bs[i] = new Ball(500 + rx,y,s);
        y = y + 70;
    }
    
}

void draw() {
    background(0);
    for (int i = 0;i < bs.length;i++) {
        bs[i].show();
        if (mousePressed) {
            if (bs[i].hit() == true && bs[i].target) {
                bs[i].target = false;
                score += (70-bs[i].size)/10;
            }
        }
    }
    
    if (frameCount % 120 ==  0) {
        for (int i = 0;i < bs.length;i++) {
            bs[i].reset();
        }
    }

fill(255,255,0);
textSize(48);
text(score,100,650);

}
