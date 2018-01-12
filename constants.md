# [Con.1: By default, make objects immutable](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con1-by-default-make-objects-immutable)

- Flag non-const variables that are not modified (except for parameters to avoid many false positives)

**partial enforcement**  
**clang-tidy: readability-non-const-parameter**  
TODO: Implement same check for local variables

# [Con.2: By default, make member functions const](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con2-by-default-make-member-functions-const)

- Flag a member function that is not marked const, but that does not perform a non-const operation on any member variable.

**no enforcement**

# [Con.3: By default, pass pointers and references to consts](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con3-by-default-pass-pointers-and-references-to-consts)

- Flag function that does not modify an object passed by pointer or reference to non-const
- Flag a function that (using a cast) modifies an object passed by pointer or reference to const

**core-check:
C26460 USE_CONST_REFERENCE_ARGUMENTS,
C26461 USE_CONST_POINTER_ARGUMENTS**

# [Con.4: Use const to define objects with values that do not change after construction](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con4-use-const-to-define-objects-with-values-that-do-not-change-after-construction)

- Flag unmodified non-const variables
*duplication to Con.1*

**core-check:
C26462 USE_CONST_POINTER_FOR_VARIABLE,
C26463 USE_CONST_FOR_ELEMENTS,
C26464 USE_CONST_POINTER_FOR_ELEMENTS,
C26496 USE_CONST_FOR_VARIABLE,
C26498 USE_CONSTEXPR_FOR_FUNCTIONCALL**

# [Con.5: Use constexpr for values that can be computed at compile time](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con5-use-constexpr-for-values-that-can-be-computed-at-compile-time)

- Flag const definitions with constant expression initializers.

**no enforcement**
