/********************************************************************

Beispielanwendung


********************************************************************/

//*******************************************************************
class cApplication : public cApplicationBase
{
  private:
	Sensor test;
	Monitor text;
  public:
    //---------------------------------------------------------------
    cApplication(  )
    :
	
  	test( Sensor::S1, Sensor::ANALOG_ON )
    {
      text.clear();  // Löscht den Text auf dem Display
    }

    //---------------------------------------------------------------
    virtual void run( BYTE para )
    {
      if( para == 0 )
      {
        text.print(1, "Prog 1 - a (%.6s,%.5s)",__DATE__,__TIME__);
        
        while(1)
        {
        } // ende der while-Schleife
      }
      else
      {
			text.print(1, "Prog 2 (%.6s,%.5s)",__DATE__,__TIME__);
        
        while(1)
        {
		}
      }
    }
};
