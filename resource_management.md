# [R.2: In interfaces, use raw pointers to denote individual objects (only)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r2-in-interfaces-use-raw-pointers-to-denote-individual-objects-only)

- Flag pointer arithmetic (including ++) on a pointer that is not part of a container, view, or iterator. This rule would generate a huge number of false positives if applied to an older code base.
- Flag array names passed as simple pointers

**clang-tidy: cppcoreguidelines-pro-bounds-\* **

# [R.3: A raw pointer (a T*) is non-owning](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r3-a-raw-pointer-a-t-is-non-owning)
# [R.4: A raw reference (a T&) is non-owning](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r4-a-raw-reference-a-t-is-non-owning)

- (Simple) Warn on delete of a raw pointer that is not an owner<T>.
- (Moderate) Warn on failure to either reset or explicitly delete an owner<T> pointer on every code path.
- (Simple) Warn if the return value of new is assigned to a raw pointer.
- (Simple) Warn if a function returns an object that was allocated within the function but has a move constructor.  Suggest considering returning it by value instead.  

**clang-tidy: cppcoreguidelines-owning-memory**

TODO: owning reference are not handled right now

# [R.5: Prefer scoped objects, don't heap-allocate unnecessarily](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r5-prefer-scoped-objects-dont-heap-allocate-unnecessarily)

- (Moderate) Warn if an object is allocated and then deallocated on all paths within a function. Suggest it should be a local auto stack object instead.
- (Simple) Warn if a local Unique_ptr or Shared_ptr is not moved, copied, reassigned or reset before its lifetime ends.

**no enforcement**

# [R.6: Avoid non-const global variables](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r6-avoid-non-const-global-variables)

- (??? NM: Obviously we can warn about non-const statics ... do we want to?)

**no enforcement**

# [R.10: Avoid malloc() and free()](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r10-avoid-malloc-and-free)

- Flag explicit use of malloc and free.

**clang-tidy: cppcoreguidelines-no-malloc**

# [R.11: Avoid calling new and delete explicitly](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r11-avoid-calling-new-and-delete-explicitly)

- (Simple) Warn on any explicit use of new and delete. Suggest using make_unique instead.

**clang-tidy: cppcoreguidelines-owning-memory**

# [R.12: Immediately give the result of an explicit resource allocation to a manager object](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r12-immediately-give-the-result-of-an-explicit-resource-allocation-to-a-manager-object)

- Flag explicit allocations used to initialize pointers (problem: how many direct resource allocations can we recognize?)

**clang-tidy: cppcoreguidelines-owning-memory**

# [R.13: Perform at most one explicit resource allocation in a single expression statement](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r13-perform-at-most-one-explicit-resource-allocation-in-a-single-expression-statement)

- Flag expressions with multiple explicit resource allocations (problem: how many direct resource allocations can we recognize?)

**no enforcement**

# [R.15: Always overload matched allocation/deallocation pairs](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r15-always-overload-matched-allocationdeallocation-pairs)

- Flag incomplete pairs.

**clang-tidy: misc-new-delete-overloads**

# [R.20: Use unique_ptr or shared_ptr to represent ownership](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r20-use-unique_ptr-or-shared_ptr-to-represent-ownership)

- (Simple) Warn if the return value of new or a function call with return value of pointer type is assigned to a raw pointer.

**clang-tidy: cppcoreguidelines-owning-memory, modernize-make_unique,
modernize-make-shared**

# [R.21: Prefer unique_ptr over shared_ptr unless you need to share ownership](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r21-prefer-unique_ptr-over-shared_ptr-unless-you-need-to-share-ownership)

- (Simple) Warn if a function uses a Shared_ptr with an object allocated within the function, but never returns the Shared_ptr or passes it to a function requiring a Shared_ptr&. Suggest using unique_ptr instead.

**no enforcement**

# [R.22: Use make_shared() to make shared_ptrs](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r22-use-make_shared-to-make-shared_ptrs)

- (Simple) Warn if a shared_ptr is constructed from the result of new rather than make_shared.

**clang-tidy: modernize-make-shared**

# [R.23: Use make_unique() to make unique_ptrs](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r23-use-make_unique-to-make-unique_ptrs)

(Simple) Warn if a unique_ptr is constructed from the result of new rather than make_unique.

**clang-tidy: modernize-make-unique**

# [R.30: Take smart pointers as parameters only to explicitly express lifetime semantics](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r30-take-smart-pointers-as-parameters-only-to-explicitly-express-lifetime-semantics)

- (Simple) Warn if a function takes a parameter of a smart pointer type (that overloads operator-> or operator*) that is copyable but the function only calls any of: operator*, operator-> or get(). Suggest using a T* or T& instead.
- Flag a parameter of a smart pointer type (a type that overloads operator-> or operator*) that is copyable/movable but never copied/moved from in the function body, and that is never modified, and that is not passed along to another function that could do so. That means the ownership semantics are not used. Suggest using a T* or T& instead.

**no enforcement**

# [R.32: Take a unique_ptr<widget> parameter to express that a function assumes ownership of a widget](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r32-take-a-unique_ptrwidget-parameter-to-express-that-a-function-assumes-ownership-of-a-widget)

- (Simple) Warn if a function takes a Unique_ptr<T> parameter by lvalue reference and does not either assign to it or call reset() on it on at least one code path. Suggest taking a T* or T& instead.
- (Simple) ((Foundation)) Warn if a function takes a Unique_ptr<T> parameter by reference to const. Suggest taking a const T* or const T& instead.

**no enforcement**

# [R.33: Take a unique_ptr<widget>& parameter to express that a function reseats the widget](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r33-take-a-unique_ptrwidget-parameter-to-express-that-a-function-reseats-thewidget)

- (Simple) Warn if a function takes a Unique_ptr<T> parameter by lvalue reference and does not either assign to it or call reset() on it on at least one code path. Suggest taking a T* or T& instead.
- (Simple) ((Foundation)) Warn if a function takes a Unique_ptr<T> parameter by reference to const. Suggest taking a const T* or const T& instead.

**no enforcement**

# [R.34: Take a shared_ptr<widget> parameter to express that a function is part owner](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r34-take-a-shared_ptrwidget-parameter-to-express-that-a-function-is-part-owner)

- (Simple) Warn if a function takes a Shared_ptr<T> parameter by lvalue reference and does not either assign to it or call reset() on it on at least one code path. Suggest taking a T* or T& instead.
- (Simple) ((Foundation)) Warn if a function takes a Shared_ptr<T> by value or by reference to const and does not copy or move it to another Shared_ptr on at least one code path. Suggest taking a T* or T& instead.
- (Simple) ((Foundation)) Warn if a function takes a Shared_ptr<T> by rvalue reference. Suggesting taking it by value instead.

**no enforcement**

# [R.35: Take a shared_ptr<widget>& parameter to express that a function might reseat the shared pointer](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r35-take-a-shared_ptrwidget-parameter-to-express-that-a-function-might-reseat-the-shared-pointer)

- (Simple) Warn if a function takes a Shared_ptr<T> parameter by lvalue reference and does not either assign to it or call reset() on it on at least one code path. Suggest taking a T* or T& instead.
- (Simple) ((Foundation)) Warn if a function takes a Shared_ptr<T> by value or by reference to const and does not copy or move it to another Shared_ptr on at least one code path. Suggest taking a T* or T& instead.
- (Simple) ((Foundation)) Warn if a function takes a Shared_ptr<T> by rvalue reference. Suggesting taking it by value instead.

**no enforcement**

# [R.36: Take a const shared_ptr<widget>& parameter to express that it might retain a reference count to the object ???](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r36-take-a-const-shared_ptrwidget-parameter-to-express-that-it-might-retain-a-reference-count-to-the-object-)

- (Simple) Warn if a function takes a Shared_ptr<T> parameter by lvalue reference and does not either assign to it or call reset() on it on at least one code path. Suggest taking a T* or T& instead.
- (Simple) ((Foundation)) Warn if a function takes a Shared_ptr<T> by value or by reference to const and does not copy or move it to another Shared_ptr on at least one code path. Suggest taking a T* or T& instead.
- (Simple) ((Foundation)) Warn if a function takes a Shared_ptr<T> by rvalue reference. Suggesting taking it by value instead.

**no enforcement**

# [R.37: Do not pass a pointer or reference obtained from an aliased smart pointer](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#r37-do-not-pass-a-pointer-or-reference-obtained-from-an-aliased-smart-pointer)

- (Simple) Warn if a pointer or reference obtained from a smart pointer variable (Unique_ptr or Shared_ptr) that is nonlocal, or that is local but potentially aliased, is used in a function call. If the smart pointer is a Shared_ptr then suggest taking a local copy of the smart pointer and obtain a pointer or reference from that instead.

**no enforcement**

