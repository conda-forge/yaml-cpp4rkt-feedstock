#include <iostream>
#include <yaml-cpp/yaml.h>

int main()
{
    YAML::Node node = YAML::Load("[1, 2, 3]");

    std::cout << "Successful execution of application that links against yaml-cpp4rkt!" << std::endl;

    return 0;
}
