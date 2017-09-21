# [Con.1: By default, make objects immutable](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con1-by-default-make-objects-immutable)

- Flag non-const variables that are not modified (except for parameters to avoid many false positives)

**clang-tidy: readability-non-const-parameter**  
TODO: Implement same check for local variables

# [Con.2: By default, make member functions const](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con2-by-default-make-member-functions-const)

- Flag a member function that is not marked const, but that does not perform a non-const operation on any member variable.

**no enforcement**

# [Con.3: By default, pass pointers and references to consts](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con3-by-default-pass-pointers-and-references-to-consts)

- Flag function that does not modify an object passed by pointer or reference to non-const
- Flag a function that (using a cast) modifies an object passed by pointer or reference to const

**no enforcement**

# [Con.4: Use const to define objects with values that do not change after construction](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con4-use-const-to-define-objects-with-values-that-do-not-change-after-construction)

- Flag unmodified non-const variables

**no enforcement, duplication to Con.1**

# [Con.5: Use constexpr for values that can be computed at compile time](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#con5-use-constexpr-for-values-that-can-be-computed-at-compile-time)

- Flag const definitions with constant expression initializers.

**no enforcement**
