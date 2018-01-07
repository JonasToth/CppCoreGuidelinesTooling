# [Pro.safety](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#prosafety-type-safety-profile)

almost complete implementation in 
**clang-tidy: cppcoreguidelines-pro-type-**

**core-check:
C26465 NO_CONST_CAST_UNNECESSARY,
C26466 NO_STATIC_DOWNCAST_POLYMORPHIC,
C26471 NO_REINTERPRET_CAST_FROM_VOID_PTR,
C26472 NO_CASTS_FOR_ARITHMETIC_CONVERSION,
C26473 NO_IDENTITY_CAST,
C26474 NO_IMPLICIT_CAST,
C26490 NO_REINTERPRET_CAST,
C26491 NO_STATIC_DOWNCAST,
C26492 NO_CONST_CAST,
C26493 NO_CSTYLE_CAST,
C26494 VAR_USE_BEFORE_INIT,
C26495 MEMBER_UNINIT**

# [Pro.bounds](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#prosafety-type-safety-profile)

almost complete implementation in 
**clang-tidy: cppcoreguidelines-pro-bounds-**

**core-check: 
C26481 NO_POINTER_ARITHMETIC,
C26482 NO_DYNAMIC_ARRAY_INDEXING,
C26483 STATIC_INDEX_OUT_OF_RANGE,
C26485 NO_ARRAY_TO_POINTER_DECAY**

# [Pro.lifetime](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#prolifetime-lifetime-safety-profile)

no direct implementation yet. But there are many tools to catch the mistakes,
that result from lifetime violations.

**no enforcement**

- Sanitizers
- Valgrind
- CSA in general finds some bad accesses as well
