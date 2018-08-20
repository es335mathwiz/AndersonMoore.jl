cmake_minimum_required(VERSION 2.8.9)
project(AndersonMoore)
enable_language(Fortran)

if (WIN32)
     find_package(LAPACK95 REQUIRED)
else ()
     find_package(LAPACK REQUIRED)
endif (WIN32)

find_package(BLAS REQUIRED)
#find_package(LAPACK REQUIRED)

set(LIBS ${BLAS_LIBRARIES} ${LAPACK_LIBRARIES})

include_directories(include)

file(GLOB SOURCES "src/*")

add_library(AndersonMoore SHARED ${SOURCES})
target_link_libraries(AndersonMoore ${LIBS})
