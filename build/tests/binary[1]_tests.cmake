add_test( TEST.TEST1 /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests/binary [==[--gtest_filter=TEST.TEST1]==] --gtest_also_run_disabled_tests)
set_tests_properties( TEST.TEST1 PROPERTIES WORKING_DIRECTORY /home/kenjhin/Desktop/workspace/Circular_Buffer/build/tests SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( binary_TESTS TEST.TEST1)
