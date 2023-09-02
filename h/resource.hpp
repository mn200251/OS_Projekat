//
// Created by os on 8/31/23.
//

#ifndef PROJECT_BASE_RESOURCE_HPP
#define PROJECT_BASE_RESOURCE_HPP

#include "sem.hpp"

struct resource
{
    unsigned val;
    _sem* semaphore;

    static resource* createResource(unsigned value);
    void aquireResource(unsigned amount);
    void releaseResource(unsigned amount);

};


#endif //PROJECT_BASE_RESOURCE_HPP
