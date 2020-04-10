set(MAIN_SRC
  main.cc
)

set(LIBC_SRC
  ${MAIN_SRC}
  implem_libc.c
)
add_executable(exp_memcpy_libc ${LIBC_SRC})

set(V0_0_SRC
  ${MAIN_SRC}
  implem_v0_0.s
)
set_property(SOURCE ${V0_0_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v0_0 ${V0_0_SRC})

set(v0_1_SRC
  ${MAIN_SRC}
  implem_v0_1.s
)
set_property(SOURCE ${v0_1_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v0_1 ${v0_1_SRC})

set(v0_2_SRC
  ${MAIN_SRC}
  implem_v0_2.s
)
set_property(SOURCE ${v0_2_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v0_2 ${v0_2_SRC})

set(v0_3_SRC
  ${MAIN_SRC}
  implem_v0_3.s
)
set_property(SOURCE ${v0_3_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v0_3 ${v0_3_SRC})
