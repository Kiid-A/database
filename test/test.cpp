#include <iostream>
#include <memory>

int main()
{
    auto sp1 = std::make_shared<int> (5);
    auto sp2 = sp1;
    std::cout << sp1.use_count() << std::endl;
}