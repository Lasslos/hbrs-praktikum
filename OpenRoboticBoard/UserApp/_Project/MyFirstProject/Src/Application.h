class cApplication : public cApplicationBase {
  private:
	Sensor test;
	Monitor monitor;
  Motor motor;
  Motor motor2;

  public:
  //---------------------------------------------------------------
  cApplication(  )
  :

  motor(Motor::M1, Motor::NORMAL, Motor::LEGO),
  motor2(Motor::M2, Motor::NORMAL, Motor::LEGO),
  test( Sensor::S1, Sensor::ANALOG_ON) {
    monitor.clear();  // L�scht den Text auf dem Display
  }

  //---------------------------------------------------------------
  virtual void run( BYTE para ) {
    if (para == 0 ) {
      monitor.print(1, "%d (%.6s,%.5s)", para, __DATE__,__TIME__);
      while(1) {
        switch (monitor.getKeyState()) {
          case Monitor::Taste_B5:
            motor.setSpeed(500);
            motor2.setSpeed(400);
            break;
          case Monitor::Taste_B8:
            motor.setSpeed(-500);
            motor2.setSpeed(-400);
            break;
          default:
            motor.setSpeed(0);
            motor2.setSpeed(0);
            break;
        }
        monitor.print(1, "Geschwindigkeit: %i", motor.getSpeed());
      } // ende der while-Schleife
    }
    else {
      monitor.print(1, "Progammmmmm 2 (%.6s,%.5s)",__DATE__,__TIME__);
      motor.setPosition(300, 0);
      while(1) {

      }
    }
  }
};
