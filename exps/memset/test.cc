#include "../../utils/timer.hh"

#include <cstdio>
#include <cstdlib>
#include <cstring>

static constexpr std::size_t NBYTES = 1000000000 * sizeof(std::uint64_t);

extern "C" {
void my_memclear(void *ptr, std::size_t nbytes);
}

std::uint64_t *g_arr;
std::uint64_t *g_ptr;

void check() {
  for (size_t i = 0; i < NBYTES / sizeof(std::uint64_t); ++i)
    if (g_ptr[i] != 0)
      std::abort();
}

int run_exp() {
  std::memset(g_ptr, 56, NBYTES);
  Timer tim;
  tim.start();
  my_memclear(g_ptr, NBYTES);
  auto dur = tim.stop();
  check();
  return dur;
}

int main() {

  g_arr = new std::uint64_t[NBYTES / sizeof(std::uint64_t) + 16];
  g_ptr = g_arr + 2;
  g_ptr = (std::uint64_t *)((size_t)g_ptr & ~0x7);

  printf("time (ms):");
  for (int i = 0; i < 10; ++i) {
    auto dur = run_exp();
    printf(" %d", dur);
    fflush(stdout);
  }
  printf("\n");

  delete[] g_arr;
  return 0;
}
