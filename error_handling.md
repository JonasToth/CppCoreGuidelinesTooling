Many sections rules of this section are not really enforceable and require
heuristics. 

# [E.5: Let a constructor establish an invariant, and throw if it cannot](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#e5-let-a-constructor-establish-an-invariant-and-throw-if-it-cannot)

- Flag classes with private state without a constructor (public,
protected, or private).

**no enforcement**

# [E.14: Use purpose-designed user-defined types as exceptions (not built-in types)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#e14-use-purpose-designed-user-defined-types-as-exceptions-not-built-in-types)

- Catch throw and catch of a built-in type. Maybe warn about throw and catch using an standard-library exception type. Obviously, exceptions derived from the std::exception hierarchy is fine.

**clang-tidy: hicpp-exception-baseclass**

# [E.15: Catch exceptions from a hierarchy by reference](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#e15-catch-exceptions-from-a-hierarchy-by-reference)

- Flag by-value exceptions if their types are part of a hierarchy (could require whole-program analysis)

**clang-tidy: misc-throw-by-value-catch-by-reference**

# [E.16: Destructors, deallocation, and swap must never fail](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#e16-destructors-deallocation-and-swap-must-never-fail)

- Catch destructors, deallocation operations, and swaps that throw. Catch such operations that are not noexcept

**clang-tidy: misc-noexcept-move-constructor**  
TODO: extend to swap operation

# [E.17: Don't try to catch every exception in every function](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#e17-dont-try-to-catch-every-exception-in-every-function)

- Flag nested try-blocks.
- Flag source code files with a too high ratio of try-blocks to functions. (??? Problem: define "too high")

**no enforcement**

# [E.30: Don't use exception specifications](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#e30-dont-use-exception-specifications)

- Flag every exception specification.

**clang-tidy: modernize-use-noexcept**

# [E.31: Properly order your catch-clauses Reason](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#e31-properly-order-your-catch-clauses)

- Flag all "hiding handlers".

**no enforcement**
