#pragma once
#include <array>
#include <stdexcept>
template<typename T,int SIZE> class CircularBuffer {
    public :
    CircularBuffer() : m_head(0),m_tail(0),currentsize(0){} //Initializerlist default constructor

    void push_back(T value)
    {

        if(m_head==m_tail && currentsize==0)
        {
          m_container[m_tail]=value;

          currentsize++;
          m_tail++;
        }
        else if(currentsize!=0)
        {
            m_container[m_tail]=value;
            currentsize++;
            m_tail++;
          if(currentsize>=SIZE && m_tail>=SIZE)
          {
            m_tail=0;
            m_head=m_tail;
            currentsize=SIZE;
            
          }
          else if(currentsize>=SIZE)
          {
            m_head++;
          }

        }


    }
    void pop(){
        if(currentsize!=0)
        {
            m_head++;
            if(m_head>=SIZE){m_head=0;}
            currentsize--;
        }
        else{
            throw std::runtime_error("can't pop anymore, buffer is empty");
        }
    }
    T const &head(){return m_container[m_head];}
    T const &tail(){return m_container[m_tail];}
    int CurrentSize(){return currentsize;}
    bool empty(){
        return currentsize==0;
    }
    private :
    int m_head;
    int m_tail;
    int currentsize;
    std::array<T,SIZE> m_container{}; // initialized by zeros
    



};