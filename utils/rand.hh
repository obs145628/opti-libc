#pragma once

#include <cstddef>
#include <cstdint>

class XorShift32 {
public:
  XorShift32(std::uint32_t seed) : _next(seed) {}

  std::uint32_t next_u32() {
    auto x = _next;
    x ^= x << 13;
    x ^= x >> 17;
    x ^= x << 5;
    return _next = x;
  }

private:
  std::uint32_t _next;
};
