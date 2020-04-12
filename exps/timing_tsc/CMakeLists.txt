set(SRC
  main.cc
  timer.s
)
set_property(SOURCE ${SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_timing_tsc ${SRC})
