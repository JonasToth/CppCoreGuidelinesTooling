# [F.1: "Package" meaningful operations as carefully named functions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f1-package-meaningful-operations-as-carefully-named-functions)

- See Keep functions short
- Flag identical and very similar lambdas used in different places.

**clang-tidy: readability-function-size**  
**codecompass: similarity checking is implemented there**

# [F.2: A function should perform a single logical operation](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f2-a-function-should-perform-a-single-logical-operation)

- Consider functions with more than one "out" parameter suspicious. Use return values instead, including tuple for multiple return values.
- Consider "large" functions that don't fit on one editor screen suspicious. Consider factoring such a function into smaller well-named suboperations.
- Consider functions with 7 or more parameters suspicious.

**clang-tidy: readability-function-size**  
TODO warn for multiple out parameters

# [F.3: Keep functions short and simple](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f3-keep-functions-short-and-simple)

- Flag functions that do not "fit on a screen." How big is a screen? Try 60 lines by 140 characters; that's roughly the maximum that's comfortable for a book page.
- Flag functions that are too complex. How complex is too complex? You could use cyclomatic complexity. Try "more than 10 logical path through." Count a simple switch as one path.

**clang-tidy: readability-function-size, readability-cognitive-complexity**  

# [F.5: If a function is very small and time-critical, declare it inline](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f5-if-a-function-is-very-small-and-time-critical-declare-it-inline)

- Flag inline functions that are more than three statements and could have been declared out of line (such as class member functions).

**no enforcement**

# [F.6: If your function may not throw, declare it noexcept](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f6-if-your-function-may-not-throw-declare-it-noexcept)

- Flag functions that are not noexcept, yet cannot throw.
- Flag throwing swap, move, destructors, and default constructors.

**clang-tidy: misc-noexcept-move-constructor, there is frontend diagnostic on
noexcept dtors**  
TODO alias into CppCoreGuidelines

# [F.7: For general use, take T* or T& arguments rather than smart pointers](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f7-for-general-use-take-t-or-t-arguments-rather-than-smart-pointers)

- copyable but never copied/moved from or movable but never moved
- and that is never modified or passed along to another function that could do so.

# [F.9: Unused parameters should be unnamed](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f9-unused-parameters-should-be-unnamed)

- Flag named unused parameters

**clang: Warning on unused parameters**

# [F.16: For "in" parameters, pass cheaply-copied types by value and others by reference to const](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f16-for-in-parameters-pass-cheaply-copied-types-by-value-and-others-by-reference-to-const)

- (Simple) ((Foundation)) Warn when a parameter being passed by value has a size greater than 4 * sizeof(int). Suggest using a reference to const instead.
- (Simple) ((Foundation)) Warn when a const parameter being passed by reference has a size less than 3 * sizeof(int). Suggest passing by value instead.
- (Simple) ((Foundation)) Warn when a const parameter being passed by reference is moved.

**no enforcement**

# [F.17: For "in-out" parameters, pass by reference to non-const](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f17-for-in-out-parameters-pass-by-reference-to-non-const)

- (Moderate) ((Foundation)) Warn about functions regarding reference to non-const parameters that do not write to them.
- (Simple) ((Foundation)) Warn when a non-const parameter being passed by reference is moved.

**no enforcement**

# [F.18: For "consume" parameters, pass by X&& and std::move the parameter](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f18-for-consume-parameters-pass-by-x-and-stdmove-the-parameter)

- Flag all X&& parameters (where X is not a template type parameter name) where the function body uses them without std::move.
- Flag access to moved-from objects.
- Don't conditionally move from objects

**clang-tidy: misc-use-after-move**

# [F.19: For "forward" parameters, pass by TP&& and only std::forward the parameter](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f19-for-forward-parameters-pass-by-tp-and-only-stdforward-the-parameter)

- Flag a function that takes a TP&& parameter (where TP is a template type parameter name) and does anything with it other than std::forwarding it exactly once on every static path.

Similar and related: **clang-tidy: misc-move-forwarding-reference**

# [F.20: For "out" output values, prefer return values to output parameters](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f20-for-out-output-values-prefer-return-values-to-output-parameters)

- Flag reference to non-const parameters that are not read before being written to and are a type that could be cheaply returned; they should be "out" return values.
- Flag returning a const value. To fix: Remove const to return a non-const value instead.

**no enforcement**

# [F.21: To return multiple "out" values, prefer returning a tuple or struct](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f21-to-return-multiple-out-values-prefer-returning-a-tuple-or-struct)

- Output parameters should be replaced by return values. An output parameter is one that the function writes to, invokes a non-const member function, or passes on as a non-const.

**no enforcement**

# [F.22: Use T* or owner<T*> to designate a single object](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f22-use-t-or-ownert-to-designate-a-single-object)

- (Simple) ((Bounds)) Warn for any arithmetic operation on an expression of pointer type that results in a value of pointer type.

**clang-tidy: cppgoreguidelines-owning-memory, cppgoreguidelines-pro-bounds-* **

# [F.23: Use a not_null<T> to indicate that "null" is not a valid value](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f23-use-a-not_nullt-to-indicate-that-null-is-not-a-valid-value)

- (Simple) Warn if a raw pointer is dereferenced without being tested against nullptr (or equivalent) within a function, suggest it is declared not_null instead.
- (Simple) Error if a raw pointer is sometimes dereferenced after first being tested against nullptr (or equivalent) within the function and sometimes is not.
- (Simple) Warn if a not_null pointer is tested against nullptr within a function.

**no enforcement**

# [F.24: Use a span<T> or a span_p<T> to designate a half-open sequence](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f24-use-a-spant-or-a-span_pt-to-designate-a-half-open-sequence)

- (Complex) Warn where accesses to pointer parameters are bounded by other parameters that are integral types and suggest they could use span instead.

**no enforcement**

# [F.26: Use a unique_ptr<T> to transfer ownership where a pointer is needed](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f26-use-a-unique_ptrt-to-transfer-ownership-where-a-pointer-is-needed)

- (Simple) Warn if a function returns a locally allocated raw pointer. Suggest using either unique_ptr or shared_ptr instead.

**clang-tidy: cppcoreguidelines-owning-memory**

# [F.42: Return a T* to indicate a position (only)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f42-return-a-t-to-indicate-a-position-only)

- Flag delete, std::free(), etc. applied to a plain T*. Only owners should be deleted.
- Flag new, malloc(), etc. assigned to a plain T*. Only owners should be responsible for deletion.

**clang-tidy: cppcoreguidelines-owning-memory**

# [F.43: Never (directly or indirectly) return a pointer or a reference to a local object](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f43-never-directly-or-indirectly-return-a-pointer-or-a-reference-to-a-local-object)

- Compilers tend to catch return of reference to locals and could in many cases catch return of pointers to locals.
- Static analysis can catch many common patterns of the use of pointers indicating positions (thus eliminating dangling pointers)

**clang-tidy: clang-analyzer-core.StackAddressEscape**

# [F.44: Return a T& when copy is undesirable and "returning no object" isn't needed](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f44-return-a-t-when-copy-is-undesirable-and-returning-no-object-isnt-needed)

- Flag functions where no return expression could yield nullptr

**no enforcement**

# [F.45: Don't return a T&&](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f45-dont-return-a-t)

- Flag any use of && as a return type, except in std::move and std::forward.

**no enforcement**

# [F.46: int is the return type for main()](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f46-int-is-the-return-type-for-main)

Already done with C++ in clang

# [F.47: Return T& from assignment operators](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f47-return-t-from-assignment-operators)

- This should be enforced by tooling by checking the return type (and return value) of any assignment operator.

**clang-tidy: cppcoreguidelines-c-copy-assignment-signature**

# [F.50: Use a lambda when a function won't do (to capture local variables, or to write a local function)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f50-use-a-lambda-when-a-function-wont-do-to-capture-local-variables-or-to-write-a-local-function)

- Warn on use of a named non-generic lambda (e.g., `auto x = [](int i){ /*...*/; };`) that captures nothing and appears at global scope. Write an ordinary function instead.

**no enforcement**

# [F.52: Prefer capturing by reference in lambdas that will be used locally, including passed to algorithms](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f52-prefer-capturing-by-reference-in-lambdas-that-will-be-used-locally-including-passed-to-algorithms)

- Flag a lambda that captures by reference, but is used other than locally within the function scope or passed to a function by reference. (Note: This rule is an approximation, but does flag passing by pointer as those are more likely to be stored by the callee, writing to a heap location accessed via a parameter, returning the lambda, etc. The Lifetime rules will also provide general rules that flag escaping pointers and references including via lambdas.)

**no enforcement**

# [F.53: Avoid capturing by reference in lambdas that will be used nonlocally, including returned, stored on the heap, or passed to another thread](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f53-avoid-capturing-by-reference-in-lambdas-that-will-be-used-nonlocally-including-returned-stored-on-the-heap-or-passed-to-another-thread)

- (Simple) Warn when capture-list contains a reference to a locally declared variable
- (Complex) Flag when capture-list contains a reference to a locally declared variable and the lambda is passed to a non-const and non-local context

**no enforcement**

# [F.54: If you capture this, capture all variables explicitly (no default capture)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f54-if-you-capture-this-capture-all-variables-explicitly-no-default-capture)

- Flag any lambda capture-list that specifies a default capture and also captures this (whether explicitly or via default capture)

**no enforcement**

# [F.55: Don't use va_arg arguments](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#f55-dont-use-va_arg-arguments)

- Issue a diagnostic for using va_list, va_start, or va_arg.
- Issue a diagnostic for passing an argument to a vararg parameter of a function that does not offer an overload for a more specific type in the position of the vararg. To fix: Use a different function, or [[suppress(types)]].

**clang-tidy: cppcoreguidelines-pro-type-vararg**
