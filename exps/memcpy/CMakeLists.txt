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

set(v1_SRC
  ${MAIN_SRC}
  implem_v1.s
)
set_property(SOURCE ${v1_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v1 ${v1_SRC})

set(v2_SRC
  ${MAIN_SRC}
  implem_v2.s
)
set_property(SOURCE ${v2_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v2 ${v2_SRC})

set(v3_SRC
  ${MAIN_SRC}
  implem_v3.s
)
set_property(SOURCE ${v3_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v3 ${v3_SRC})

set(v4_SRC
  ${MAIN_SRC}
  implem_v4.s
)
set_property(SOURCE ${v4_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v4 ${v4_SRC})

set(v5_SRC
  ${MAIN_SRC}
  implem_v5.s
)
set_property(SOURCE ${v5_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v5 ${v5_SRC})

set(v6_SRC
  ${MAIN_SRC}
  implem_v6.s
)
set_property(SOURCE ${v6_SRC} PROPERTY LANGUAGE CXX)
add_executable(exp_memcpy_v6 ${v6_SRC})
