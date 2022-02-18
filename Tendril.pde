class Tendril
{
  public final static int SEG_LENGTH = 9; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;

  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  
public void show()
  {
    if (myNumSegments > 30) {
      stroke(250, 25, 10);
    } else if (myNumSegments > 29) {
      stroke(100, 130, 0);
    } else {
      stroke(80, 67, 41);
    }
    float startX = myX;
    float startY = myY;
    for (int i = 0; i < myNumSegments; i++) {
      myAngle += (Math.random()*.2) - 0.2;
      float endX = (float)(startX + (Math.cos(myAngle)*SEG_LENGTH));
      float endY = (float)(startY + (Math.sin(myAngle)*SEG_LENGTH));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      if ((i+1) == myNumSegments && (myNumSegments >= 3)) {
        System.out.println(myNumSegments);
        Cluster clusy = new Cluster(myNumSegments-15, (int)endX, (int)endY);
      }
    }
    
  }
}

