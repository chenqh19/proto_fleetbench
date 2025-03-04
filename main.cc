#include <iostream>
#include <chrono>
#include "lifecycle.h"
#include "google/protobuf/arena.h"

int main() {
    
    // Create lifecycle object. Each lifecycle object is 10 iterations.
    proto::ProtoLifecycle lifecycle(10);
    
    
    // Run lifecycle 10 times
    std::cout << "Running lifecycle 10 times..." << std::endl;
    auto start_time = std::chrono::high_resolution_clock::now();
    
    // run the lifecycle several times
    for (int i = 0; i < 8; i++) {
        google::protobuf::Arena arena;
        lifecycle.Init(&arena);
        lifecycle.Run();
    }
    
    auto end_time = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time);
    
    std::cout << "Completed all iterations in " << duration.count() << " milliseconds." << std::endl;
    return 0;
}