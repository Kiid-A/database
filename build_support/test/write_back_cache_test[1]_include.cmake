if(EXISTS "/root/CSDIY/database/build_support/test/write_back_cache_test[1]_tests.cmake")
  include("/root/CSDIY/database/build_support/test/write_back_cache_test[1]_tests.cmake")
else()
  add_test(write_back_cache_test_NOT_BUILT write_back_cache_test_NOT_BUILT)
endif()