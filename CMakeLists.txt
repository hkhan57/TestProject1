cmake_minimum_required(VERSION 3.10)

# set the project name
project(xml_test)

# add the executable
add_executable(xml_test reader1.c reader2.c)

find_package(LibXml2 REQUIRED)

target_include_directories(xml_test PUBLIC ${LIBXML2_INCLUDE_DIR})
target_link_libraries(xml_test PUBLIC ${LIBXML2_LIBRARIES})

install(TARGETS xml_test DESTINATION bin)
