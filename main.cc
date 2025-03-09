#include <iostream>
#include <chrono>
#include "lifecycle.h"
#include "google/protobuf/arena.h"

int main(int argc, char* argv[]) {
    // Create lifecycle object. Each lifecycle object is 10 iterations.
    proto::ProtoLifecycle lifecycle(10);
    
    // Parse iterations from command line, default to 8 if not provided
    int iterations = 8;
    if (argc > 1) {
        iterations = std::atoi(argv[1]);
        if (iterations <= 0) {
            std::cerr << "Error: Number of iterations must be positive" << std::endl;
            return 1;
        }
    }
    
    std::cout << "Running lifecycle " << iterations << " times..." << std::endl;
    auto start_time = std::chrono::high_resolution_clock::now();
    
    // run the lifecycle several times
    for (int i = 0; i < iterations; i++) {
        google::protobuf::Arena arena;
        lifecycle.Init(&arena);
        lifecycle.Run();
    }
    
    auto end_time = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time);
    
    std::cout << "Completed all iterations in " << duration.count() << " milliseconds." << std::endl;
    return 0;
}