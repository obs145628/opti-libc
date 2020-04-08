set(MAIN_SRC
  main.cc
)

set(LIBC_SRC
  ${MAIN_SRC}
  implem_libc.c
)
add_executable(exp_memcpy_libc ${LIBC_SRC})
