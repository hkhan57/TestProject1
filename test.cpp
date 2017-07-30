#include <iostream>
#include <string.h>

using namespace std;

int main(int argc, char* argv[])
{
   if (argc != 2) {
      cerr << "Please provide a string arg\n";
      return 1;
   }

   const char* test = argv[1];

   for (const char* p_stop = test; *p_stop; p_stop++)
   {
      for (const char* p = test; p <= p_stop; p++)
      {
         cout << *p;
      }
      cout << '\n';
   }

   return 0;
}
