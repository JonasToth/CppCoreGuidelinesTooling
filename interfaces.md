# [I.1: Make interfaces explicit](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i1-make-interfaces-explicit)

- (Simple) A function should not make control-flow decisions based on the values of variables declared at namespace scope.
- (Simple) A function should not write to variables declared at namespace scope.

**no enforcement**

# [I.2: Avoid global variables](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i2-avoid-global-variables)

- (Simple) Report all non-const variables declared at namespace scope.
**no enforcement**

# [I.4: Make interfaces precisely and strongly typed](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i4-make-interfaces-precisely-and-strongly-typed)

- (Simple) Report the use of void\* as a parameter or return type.
- (Hard to do well) Look for member functions with many built-in type arguments.

**no enforcement**

# [I.9: If an interface is a template, document its parameters using concepts](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i9-if-an-interface-is-a-template-document-its-parameters-using-concepts)

- (Not yet enforceable) A language facility is under specification. When the language facility is available, warn if any non-variadic template parameter is not constrained by a concept (in its declaration or mentioned in a requires clause).

Concepts are on the way to be standardized, clang are implementing them, soon.

**no enforcement**

# [I.11: Never transfer ownership by a raw pointer (`T\*`)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i11-never-transfer-ownership-by-a-raw-pointer-t)

**clang-tidy: cppcoreguidelines-owning-memory**

# [I.12: Declare a pointer that must not be null as not_null](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i12-declare-a-pointer-that-must-not-be-null-as-not_null)

- (Simple) ((Foundation)) If a function checks a pointer parameter against nullptr before access, on all control-flow paths, then warn it should be declared not_null.
- (Complex) If a function with pointer return value ensures it is not nullptr on all return paths, then warn the return type should be declared not_null.

**no enforcement**

# [I.13: Do not pass an array as a single pointer](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i13-do-not-pass-an-array-as-a-single-pointer)

- (Simple) ((Bounds)) Warn for any expression that would rely on implicit conversion of an array type to a pointer type. Allow exception for zstring/czstring pointer types.
- (Simple) ((Bounds)) Warn for any arithmetic operation on an expression of pointer type that results in a value of pointer type.  Allow exception for zstring/czstring pointer types.

**clang-tidy: cppcoreguidelines-pro-bounds-array-to-pointer-decay,
cppcoreguidelines-pro-bounds-pointer-arithmetic**

# [I.22: Avoid complex initialization of global objects](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i22-avoid-complex-initialization-of-global-objects)

- Flag initializers of globals that call non-constexpr functions
- Flag initializers of globals that access extern objects

**no enforcement**

# [I.23: Keep the number of function arguments low](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i23-keep-the-number-of-function-arguments-low)

- Warn when a function declares two iterators (including pointers) of the same type instead of a range or a view.
- (Not enforceable) This is a philosophical guideline that is infeasible to check directly.

TODO: alias into cppcoreguidelines?
**clang-tidy: readability-function-size**

# [I.24: Avoid adjacent unrelated parameters of the same type](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i24-avoid-adjacent-unrelated-parameters-of-the-same-type)

- (Simple) Warn if two consecutive parameters share the same type.

**no enforcement**

# [I.25: Prefer abstract classes as interfaces to class hierarchies](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i25-prefer-abstract-classes-as-interfaces-to-class-hierarchies)

- (Simple) Warn if a pointer/reference to a class C is assigned to a pointer/reference to a base of C and the base class contains data members.

**no enforcement**

# 
