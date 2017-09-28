# [P.1: Express ideas directly in code](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p1-express-ideas-directly-in-code)

- Very hard in general.

- use const consistently (check if member functions modify their object;
- check if functions modify arguments passed by pointer or reference)
- flag uses of casts (casts neuter the type system)
- detect code that mimics the standard library (hard)

**no enforcement**  
**clang-tidy: cppcoreguidelines-pro-type-const-cast,cppcoreguidelines-pro-type-cstyle-cast,cppcoreguidelines-pro-type-reinterpret-cast, cppcoreguidelines-pro-type-static-cast-downcast**

- maybe `CodeChecker` could do the 'mimics' part with its similarity check
- const would be a nice and valuable check for clang-tidy

# [P.2: Write in ISO Standard C++](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p2-write-in-iso-standard-c)

- Use an up-to-date C++ compiler (currently C++11 or C++14) with a set of options that do not accept extensions.

**no enforcement**

- @pepsiman is working on that, See #2

# [P.3: Express intent](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p3-express-intent)

- Look for common patterns for which there are better alternatives

- simple for loops vs. range-for loops
- f(T*, int) interfaces vs. f(span<T>) interfaces
- loop variables in too large a scope
- naked new and delete
- functions with many parameters of built-in types

- There is a huge scope for cleverness and semi-automated program transformation.

**clang-tidy: modernize-loop-convert,cppcoreguidelines-owning-memory,readability-function-size**
**cppcheck: variableScope**

# [P.4: Ideally, a program should be statically type safe](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p4-ideally-a-program-should-be-statically-type-safe)

We can ban, restrain, or detect the individual problem categories separately, as required and feasible for individual programs. Always suggest an alternative. For example:

- unions -- use variant (in C++17)
- casts -- minimize their use; templates can help
- array decay -- use span (from the GSL)
- range errors -- use span
- narrowing conversions -- minimize their use and use
- narrow or narrow_cast (from the GSL) where they are necessary

**no enforcement**

# [P.5: Prefer compile-time checking to run-time checking](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p5-prefer-compile-time-checking-to-run-time-checking)

- Look for pointer arguments.
- Look for run-time checks for range violations.

**no enforcement**

# [P.6: What cannot be checked at compile time should be checkable at run time](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p6-what-cannot-be-checked-at-compile-time-should-be-checkable-at-run-time)

- Flag (pointer, count)-style interfaces (this will flag a lot of examples that can't be fixed for compatibility reasons)

**no enforcement**

# [P.7: Catch run-time errors early](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p7-catch-run-time-errors-early)

- Look at pointers and arrays: Do range-checking early and not repeatedly
- Look at conversions: Eliminate or mark narrowing conversions
- Look for unchecked values coming from input
- Look for structured data (objects of classes with invariants) being converted into strings

**no enforcement**

# [P.8: Don't leak any resources](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p8-dont-leak-any-resources)

- Look at pointers: Classify them into non-owners (the default) and owners.  Where feasible, replace owners with standard-library resource handles (as in the example above). Alternatively, mark an owner as such using owner from the GSL.
- Look for naked new and delete
- Look for known resource allocating functions returning raw pointers (such as fopen, malloc, and strdup)

**clang-tidy: cppcoreguidelines-no-malloc,cppcoreguidelines-owning-memory**

# [P.11: Encapsulate messy constructs, rather than spreading through the code](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p11-encapsulate-messy-constructs-rather-than-spreading-through-the-code)

- Look for "messy code" such as complex pointer manipulation and casting outside the implementation of abstractions.

**no enforcement**

- limit the amount of indirection (max 1 Pointer/Reference indirection, banning int **)
