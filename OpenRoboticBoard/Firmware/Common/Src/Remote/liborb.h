class cApplicationBase
{
public:
  virtual void run(BYTE para) = 0;

};

class Main
{
  public:
    char *port;

  public:
    Main( int argc, char **argv );

    void run(cApplicationBase &ablauf );

    ORB* getOrb();
};
