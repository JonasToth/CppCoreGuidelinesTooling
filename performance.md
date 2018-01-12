# [Per.11: Move computation from run time to compile time](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#per11-move-computation-from-run-time-to-compile-time)

- Look for simple functions that might be constexpr (but are not).
- Look for functions called with all constant-expression arguments.
- Look for macros that could be constexpr.

**no enforcement**
