#include "CircularBuffer.hpp"
#include <gtest/gtest.h>
#include <vector>

TEST(TEST1,TEST_PUSH_BACK_CHECK_HEAD){
    CircularBuffer<int,5> buffer;
    buffer.push_back(1);
    EXPECT_EQ(buffer.head(),1);
}
TEST(TEST2,TEST_PUSH_BACK_CIRCULAR_BUFFER_OVERLAPPING){
    CircularBuffer<int,5> buffer;
    buffer.push_back(1);
    buffer.push_back(2);
    buffer.push_back(3);
    buffer.push_back(4);
    buffer.push_back(5);
    buffer.push_back(6);
    buffer.push_back(7);
    buffer.push_back(8);
    buffer.push_back(9);
    buffer.push_back(10);
    EXPECT_EQ(buffer.head(),6);
    EXPECT_EQ(buffer.tail(),6);
    
}
TEST(TEST3,TEST_CURRENT_SIZE)
{
    CircularBuffer<int,5> buffer;
    buffer.push_back(1);
    EXPECT_EQ(buffer.CurrentSize(),1);
    
}
TEST(TEST4,TEST_IF_BUFFER_IS_EMPTY)
{
    CircularBuffer<int,5> buffer;
    EXPECT_TRUE(buffer.empty());
}
TEST(TEST5,TEST_POP)
{
    std::vector<int> expected{1,2,3,4,5}; /*expected buffer that was stored from circular
                                                buffer to the copy container*/
    std::vector<int> copy;
    CircularBuffer<int,5> buffer;
    buffer.push_back(1);
    buffer.push_back(2);
    buffer.push_back(3);
    buffer.push_back(4);
    buffer.push_back(5);
    while(!buffer.empty())
    {
        copy.push_back(buffer.head()); //store our circularbuffer into a spare buffer 
        buffer.pop(); //move head and decrease currentsize
    }
    EXPECT_EQ(expected,copy);
}
TEST(TEST6,TEST_POP_THROW_EXCEPTION)
{
    std::vector<int> expected{1,2,3,4,5}; /*expected buffer that was stored from circular
                                                buffer to the copy container*/
    std::vector<int> copy;
    CircularBuffer<int,5> buffer;
    buffer.push_back(1);
    buffer.push_back(2);
    buffer.push_back(3);
    buffer.push_back(4);
    buffer.push_back(5);
    while(!buffer.empty())
    {
        copy.push_back(buffer.head()); //store our circularbuffer into a spare buffer 
        buffer.pop(); //move head and decrease currentsize
    }
    EXPECT_THROW(buffer.pop(),std::runtime_error);
}
TEST(TEST7,TEST_POP_THROW_EXCEPTION2)
{
    CircularBuffer<int,5>buffer;
    EXPECT_THROW(buffer.pop(),std::runtime_error);
}