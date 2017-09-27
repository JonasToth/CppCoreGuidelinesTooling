# [Pro.safety](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#prosafety-type-safety-profile)

almost complete implementation in 
**clang-tidy: cppcoreguidelines-pro-type-**

# [Pro.bounds](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#prosafety-type-safety-profile)

almost complete implementation in 
**clang-tidy: cppcoreguidelines-pro-bounds-**

# [Pro.lifetime](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#prolifetime-lifetime-safety-profile)

no direct implementation yet. But there are many tools to catch the mistakes,
that result from lifetime violations.

**no enforcement**

- Sanitizers
- Valgrind
- CSA in general finds some bad accesses as well
