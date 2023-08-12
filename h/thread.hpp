//
// Created by os on 8/12/23.
//

#ifndef PROJECT_BASE_THREAD_HPP
#define PROJECT_BASE_THREAD_HPP


int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg,
        void* stack_space
);


#endif //PROJECT_BASE_THREAD_HPP
