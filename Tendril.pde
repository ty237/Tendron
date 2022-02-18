class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
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
      stroke(255, 228, 196);
    } else if (myNumSegments > 15) {
      stroke(153, 102, 0);
    } else if (myNumSegments > 4){
      stroke(255, 192, 203);
    } else {
      stroke(255, 0, 0);
    }
    int startX = myX;
    int startY = myY;
    for (int i = 0; i < myNumSegments; i++) {
      myAngle += (Math.random()*.4) - 0.2;
      int endX = (startX + (int)(Math.cos(myAngle)*SEG_LENGTH));
      int endY = (startY + (int)(Math.sin(myAngle)*SEG_LENGTH));
      line((int)startX, (int)startY, (int)endX, (int)endY);
      startX = endX;
      startY = endY;
    }
    if (myNumSegments >= 3) {
        Cluster clusy = new Cluster(myNumSegments/3, startX, startY);
      }
  }
}
