See ThreadSanitizer, llvm Thread Safety annotations.

# [CP.2: Avoid data races](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp2-avoid-data-races)

Some is possible, do at least something. There are commercial and
open-source tools that try to address this problem, but be aware that
solutions have costs and blind spots. Static tools often have many false
positives and run-time tools often have a significant cost. We hope for
better tools. Using multiple tools can catch more problems than a single
one.

There are other ways you can mitigate the chance of data races:

- Avoid global data
- Avoid static variables
- More use of value types on the stack (and don't pass pointers around too much)
- More use of immutable data (literals, constexpr, and const)

**no enforcement**

# [CP.20: Use RAII, never plain lock()/unlock()](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp20-use-raii-never-plain-lockunlock)

- Flag calls of member lock() and unlock(). ???

**no enforcement**

# [CP.21: Use std::lock() or std::scoped_lock to acquire multiple mutexes](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp21-use-stdlock-or-stdscoped_lock-to-acquire-multiple-mutexes)

- Detect the acquisition of multiple mutexes. This is undecidable in general, but catching common simple examples (like the one above) is easy.

**no enforcement**

# [CP.22: Never call unknown code while holding a lock (e.g., a callback)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp22-never-call-unknown-code-while-holding-a-lock-eg-a-callback)

- Flag calling a virtual function with a non-recursive mutex held
- Flag calling a callback with a non-recursive mutex held

**no enforcement**

# [CP.23: Think of a joining thread as a scoped container](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp23-think-of-a-joining-thread-as-a-scoped-container)

- Ensure that joining_threads don't detach(). After that, the usual lifetime and ownership (for local objects) enforcement applies.

**no enforcement**

# [CP.24: Think of a thread as a global container](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp24-think-of-a-thread-as-a-global-container)

- Flag attempts to pass local variables to a thread that might detach().

**no enforcement**

# [CP.25: Prefer gsl::joining_thread over std::thread](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp25-prefer-gsljoining_thread-over-stdthread)

Flag uses of std::thread:

- Suggest use of gsl::joining_thread.
- Suggest "exporting ownership" to an enclosing scope if it detaches.
- Seriously warn if it is not obvious whether if joins of detaches.

**no enforcement**

# [CP.26: Don't detach() a thread](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp26-dont-detach-a-thread)

- Flag detach()

**no enforcement**

# [CP.42: Don't wait without a condition](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp42-dont-wait-without-a-condition)

- Flag all waits without conditions.

**no enforcement**

# [CP.44: Remember to name your lock_guards and unique_locks](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp44-remember-to-name-your-lock_guards-and-unique_locks)

- Flag all unnamed lock_guards and unique_locks.

**no enforcement**

# [CP.101: Distrust your hardware/compiler combination](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp101-distrust-your-hardwarecompiler-combination)

- Have strong rules for re-testing in place that covers any change in hardware, operating system, compiler, and libraries.

**use unittesting, buildbot/jenkins for all your platforms**

# [CP.200: Use volatile only to talk to non-C++ memory](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#cp200-use-volatile-only-to-talk-to-non-c-memory)

- Flag volatile T local and member variables; almost certainly you intended to use atomic<T> instead.  

**no enforcement**
