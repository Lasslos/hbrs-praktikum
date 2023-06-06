
class cApplication : public cApplicationBase {
  private:
  Sensor sensor;
  Monitor monitor;
  

  public:
  //---------------------------------------------------------------
  cApplication(  )
  :
  sensor(Sensor::S1, Sensor::EV3_ULTRASCHALL) {
    monitor.clear();
  }

  //---------------------------------------------------------------
  virtual void run(BYTE para) {
    if (para == 0 ) {
      monitor.print(1, "%d (%.6s,%.5s)", para, __DATE__,__TIME__);
      while(1) {
        monitor.print(1, "%i", sensor.get());
      } // ende der while-Schleife
    }
    else {
      monitor.print(1, "%d (%.6s,%.5s)", para, __DATE__,__TIME__);
      while(1) {
        
      }
    }
  }
};
