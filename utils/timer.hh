#include <chrono>

class Timer {

public:
  Timer() = default;

  void start() { _begin = std::chrono::high_resolution_clock::now(); }

  int stop() {
    auto diff = std::chrono::high_resolution_clock::now() - _begin;
    return std::chrono::duration_cast<std::chrono::milliseconds>(diff).count();
  }

private:
  std::chrono::time_point<std::chrono::high_resolution_clock> _begin;
};
