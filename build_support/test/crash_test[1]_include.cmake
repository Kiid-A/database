if(EXISTS "/root/CSDIY/database/build_support/test/crash_test[1]_tests.cmake")
  include("/root/CSDIY/database/build_support/test/crash_test[1]_tests.cmake")
else()
  add_test(crash_test_NOT_BUILT crash_test_NOT_BUILT)
endif()