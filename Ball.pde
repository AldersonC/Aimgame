class Ball{
    
    int x;
    int y;
    int size;
    boolean target;
    
    public Ball(int x, int y, int size) {
        this.x = x;
        this.y = y;
        this.size = size;
        
        if (Math.random() < 0.7) {
            target = true;
        } else{
            target = false;
        }
    }
    
    void show() {
        if(target==true){
            fill(0,0,255);
        }else{
            fill(255);
        }

        circle(x, y, size);
    }
    
    void reset() {
        
        int ry = (int)(Math.random() * 300);
        y = 350 + ry;
        
        size = (int)(Math.random() * 50) + 20;
        
        if (Math.random()<0.5) {
            target = true;
        } else{
            target = false;
        }
        
    }
    
    boolean hit() {
        double d = dist(x, y, mouseX, mouseY);
        if (d < size / 2) {
            return true;
        } else{
            return false;
        }
    }
    
}
