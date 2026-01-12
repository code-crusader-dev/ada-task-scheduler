# 🧠 Ada Cooperative Task Scheduler

Designed and implemented a cooperative task scheduler in Ada using protected objects and task synchronization. The scheduler controls task execution based on priority, allowing only one task to run at a time, simulating real-time system behavior commonly used in embedded and safety-critical systems.

## 🧠 How It Works

- Multiple worker tasks request execution from a central scheduler.
- The scheduler uses a protected object to ensure only one task runs at a time.
- Tasks are released in a controlled order, simulating cooperative scheduling.
- Each task notifies the scheduler upon completion before the next task is allowed to run.

## 🏗 Architecture

Main
 ├── Worker Task (Priority 1)
 ├── Worker Task (Priority 5)
 └── Worker Task (Priority 9)
        ↓
   Scheduler (Protected Object)
        ↓
   Controlled Task Execution

## 🚀 Why Ada?

- Built-in support for safe concurrency
- Strong typing for safety-critical systems
- Widely used in avionics, defense, and real-time systems
- Eliminates common concurrency bugs found in other languages

## ▶️ How to Run
```bash
gnatmake main.adb
./main

## sample output

[Scheduler] Allowing Task 1 (Priority 1)
Task 1 running
[Scheduler] Task 1 finished
