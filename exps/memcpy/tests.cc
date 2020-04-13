#include <algorithm>
#include <catch2/catch.hpp>

#include "../../utils/rand.hh"

extern "C" {
void my_memcpy(void *dst, const void *src, std::size_t nbytes);
}

namespace {

void test_memcpy(size_t size, std::uint32_t seed) {
  auto a1 = new std::uint8_t[size];
  auto a2 = new std::uint8_t[size];

  XorShift32 rng(seed);
  for (size_t i = 0; i < size; ++i)
    a1[i] = rng.next_u32() & 0xFF;

  my_memcpy(a2, a1, size);
  REQUIRE(std::equal(a1, a1 + size, a2));
  delete[] a1;
  delete[] a2;
}

} // namespace

TEST_CASE("memcpy size 0", "") { test_memcpy(0, 18); }
TEST_CASE("memcpy size 1", "") { test_memcpy(1, 18); }
TEST_CASE("memcpy size 2", "") { test_memcpy(2, 45); }
TEST_CASE("memcpy size 6", "") { test_memcpy(6, 118); }
TEST_CASE("memcpy size 7", "") { test_memcpy(7, 66); }
TEST_CASE("memcpy size 18", "") { test_memcpy(18, 12); }
TEST_CASE("memcpy size 29", "") { test_memcpy(29, 40); }
TEST_CASE("memcpy size 203", "") { test_memcpy(203, 17); }
TEST_CASE("memcpy size 401", "") { test_memcpy(401, 29); }
TEST_CASE("memcpy size 907", "") { test_memcpy(907, 189); }
TEST_CASE("memcpy size 1601", "") { test_memcpy(1601, 23); }
TEST_CASE("memcpy size 3407", "") { test_memcpy(3407, 672581); }
