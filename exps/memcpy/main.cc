#include "../../utils/timer.hh"

#include <cstdio>
#include <cstdlib>
#include <cstring>

// Size multiple of 2048
static constexpr std::size_t NBYTES = 500000000 * sizeof(std::uint64_t);

extern "C" {
void my_memcpy(void *dst, const void *src, std::size_t nbytes);
}

std::uint64_t *g_arr1;
std::uint64_t *g_arr2;

void check() {
  for (size_t i = 0; i < NBYTES / sizeof(std::uint64_t); ++i)
    if (g_arr1[i] != g_arr2[i])
      std::abort();
}

int run_exp() {
  std::memset(g_arr2, 0, NBYTES);
  Timer tim;
  tim.start();
  my_memcpy(g_arr2, g_arr1, NBYTES);
  auto dur = tim.stop();
  check();
  return dur;
}

int main() {
  g_arr1 = new std::uint64_t[NBYTES / sizeof(std::uint64_t) + 16];
  g_arr2 = new std::uint64_t[NBYTES / sizeof(std::uint64_t) + 16];
  for (std::size_t i = 0; i < NBYTES / sizeof(std::uint64_t); ++i)
    g_arr1[i] = i * i + 3 * i - 194597;

  printf("time (ms):");
  for (int i = 0; i < 10; ++i) {
    auto dur = run_exp();
    printf(" %d", dur);
    fflush(stdout);
  }
  printf("\n");

  delete[] g_arr1;
  delete[] g_arr2;
  return 0;
}
