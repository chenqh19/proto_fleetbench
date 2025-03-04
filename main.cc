#include <iostream>
#include "lifecycle.h"
#include "google/protobuf/arena.h"

int main() {
    // Create arena for memory management
    google::protobuf::Arena arena;
    
    // Create lifecycle object
    proto::ProtoLifecycle lifecycle(10);
    
    // Initialize lifecycle
    lifecycle.Init(&arena);
    
    // Run lifecycle 10 times
    std::cout << "Running lifecycle 10 times..." << std::endl;
    for (int i = 0; i < 10; i++) {
        std::cout << "Iteration " << (i + 1) << std::endl;
        lifecycle.Run();
    }
    
    std::cout << "Completed all iterations." << std::endl;
    return 0;
}