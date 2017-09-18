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


