# CMake generated Testfile for 
# Source directory: /root/CSDIY/database/test
# Build directory: /root/CSDIY/database/build_support/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
include("/root/CSDIY/database/build_support/test/crash_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/binder_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/buffer_pool_manager_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/clock_replacer_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/lru_k_replacer_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/lru_replacer_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/rwlatch_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/extendible_htable_concurrent_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/extendible_htable_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/hash_table_page_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/hash_table_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/orset_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/trie_debug_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/trie_noncopy_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/trie_store_noncopy_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/trie_store_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/trie_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/b_plus_tree_concurrent_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/b_plus_tree_contention_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/b_plus_tree_delete_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/b_plus_tree_insert_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/b_plus_tree_sequential_scale_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/disk_manager_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/disk_scheduler_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/extendible_htable_page_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/page_guard_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/tmp_tuple_page_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/write_back_cache_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/tuple_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/txn_abort_serializable_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/txn_executor_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/txn_index_concurrent_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/txn_index_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/txn_scan_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/txn_timestamp_test[1]_include.cmake")
include("/root/CSDIY/database/build_support/test/type_test[1]_include.cmake")
add_test(SQLLogicTest.p0.01-lower-upper "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p0.01-lower-upper.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p0.01-lower-upper PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p0.02-function-error "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p0.02-function-error.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p0.02-function-error PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p0.03-string-scan "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p0.03-string-scan.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p0.03-string-scan PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.01-seqscan "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.01-seqscan.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.01-seqscan PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.02-insert "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.02-insert.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.02-insert PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.03-update "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.03-update.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.03-update PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.04-delete "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.04-delete.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.04-delete PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.05-index-scan "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.05-index-scan.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.05-index-scan PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.06-empty-table "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.06-empty-table.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.06-empty-table PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.07-simple-agg "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.07-simple-agg.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.07-simple-agg PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.08-group-agg-1 "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.08-group-agg-1.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.08-group-agg-1 PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.09-group-agg-2 "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.09-group-agg-2.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.09-group-agg-2 PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.10-simple-join "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.10-simple-join.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.10-simple-join PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.11-multi-way-join "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.11-multi-way-join.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.11-multi-way-join PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.12-repeat-execute "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.12-repeat-execute.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.12-repeat-execute PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.13-nested-index-join "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.13-nested-index-join.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.13-nested-index-join PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.14-hash-join "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.14-hash-join.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.14-hash-join PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.15-multi-way-hash-join "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.15-multi-way-hash-join.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.15-multi-way-hash-join PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.16-sort-limit "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.16-sort-limit.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.16-sort-limit PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.17-topn "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.17-topn.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.17-topn PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.18-integration-1 "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.18-integration-1.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.18-integration-1 PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.19-integration-2 "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.19-integration-2.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.19-integration-2 PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.20-window-function "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.20-window-function.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.20-window-function PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.leaderboard-q1-window "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.leaderboard-q1-window.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.leaderboard-q1-window PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.leaderboard-q2 "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.leaderboard-q2.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.leaderboard-q2 PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
add_test(SQLLogicTest.p3.leaderboard-q3 "/root/CSDIY/database/build_support/bin/bustub-sqllogictest" "/root/CSDIY/database/test/sql/p3.leaderboard-q3.slt" "--verbose" "-d" "--in-memory")
set_tests_properties(SQLLogicTest.p3.leaderboard-q3 PROPERTIES  _BACKTRACE_TRIPLES "/root/CSDIY/database/test/CMakeLists.txt;90;add_test;/root/CSDIY/database/test/CMakeLists.txt;0;")
