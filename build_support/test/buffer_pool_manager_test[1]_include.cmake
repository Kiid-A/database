if(EXISTS "/root/CSDIY/database/build_support/test/buffer_pool_manager_test[1]_tests.cmake")
  include("/root/CSDIY/database/build_support/test/buffer_pool_manager_test[1]_tests.cmake")
else()
  add_test(buffer_pool_manager_test_NOT_BUILT buffer_pool_manager_test_NOT_BUILT)
endif()