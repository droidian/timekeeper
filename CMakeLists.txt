cmake_minimum_required(VERSION 2.6)
project(timekeeper)
set (CMAKE_CXX_STANDARD 11)

add_executable(timekeeper timekeeper.cpp)

install (TARGETS timekeeper DESTINATION bin)
install (FILES timekeeper.service DESTINATION /etc/systemd/system)
install (FILES timekeeper_wait.sh DESTINATION /usr/bin/droid)
