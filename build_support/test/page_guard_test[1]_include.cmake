if(EXISTS "/root/CSDIY/database/build_support/test/page_guard_test[1]_tests.cmake")
  include("/root/CSDIY/database/build_support/test/page_guard_test[1]_tests.cmake")
else()
  add_test(page_guard_test_NOT_BUILT page_guard_test_NOT_BUILT)
endif()
