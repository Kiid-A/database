if(EXISTS "/root/CSDIY/database/build_support/test/orset_test[1]_tests.cmake")
  include("/root/CSDIY/database/build_support/test/orset_test[1]_tests.cmake")
else()
  add_test(orset_test_NOT_BUILT orset_test_NOT_BUILT)
endif()