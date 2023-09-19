#include <string>
using namespace std;

class Test_definition {

public:
    Test_definition() = default;
    Test_definition(const Test_definition&) = delete;
    Test_definition(string nom);

    void do_something();
    long calculate(int a, double b);
    virtual ~Test_definition();
    enum  class State {ON, OFF};

protected:
    virtual void Initialize();
    virtual void Suspend();
    State GetState();

private:
    State _State{State::ON};
    string _test_name = "";
    int _i{0};

    static int _instances;
};

int Test_definition::_instances{0};
