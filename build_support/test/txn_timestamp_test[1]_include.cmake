if(EXISTS "/root/CSDIY/database/build_support/test/txn_timestamp_test[1]_tests.cmake")
  include("/root/CSDIY/database/build_support/test/txn_timestamp_test[1]_tests.cmake")
else()
  add_test(txn_timestamp_test_NOT_BUILT txn_timestamp_test_NOT_BUILT)
endif()
