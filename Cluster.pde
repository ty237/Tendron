class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
      for (int i = 0; i < 7; i++) {
          Tendril teny = new Tendril(len, (Math.random()*2*Math.PI), x, y);
          teny.show();
      }
    }
}
