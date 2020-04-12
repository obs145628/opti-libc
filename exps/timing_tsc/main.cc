#include "../../utils/timer.hh"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

extern "C" {
std::uint64_t get_tsc();
}

void my_loop() {
  volatile int i = 0;
  while (i < 10000000)
    ++i;
}

int run_cpp_timer() {
  Timer tim;
  tim.start();
  my_loop();
  auto dur = tim.stop();
  return dur;
}

int main() {

  auto x = get_tsc();
  printf("x = %lu\n", x);

  printf("time (ms):");
  for (int i = 0; i < 10; ++i) {
    auto dur = run_cpp_timer();
    printf(" %d", dur);
    fflush(stdout);
  }
  printf("\n");

  return 0;
}
