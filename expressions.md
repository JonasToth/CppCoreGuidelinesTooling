# [ES.5: Keep scopes small](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es5-keep-scopes-small)

- Flag loop variable declared outside a loop and not used after the loop
- Flag when expensive resources, such as file handles and locks are not used for N-lines (for some suitable N)

**clang-tidy: readability-function-size**

# [ES.6: Declare names in for-statement initializers and conditions to limit scope](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es6-declare-names-in-for-statement-initializers-and-conditions-to-limit-scope)

- Flag loop variables declared before the loop and not used after the loop
- (hard) Flag loop variables declared before the loop and used after the loop for an unrelated purpose.

C++17 enforcement (if using a C++17 compiler)

- Flag selection/loop variables declared before the body and not used after the body
- (hard) Flag selection/loop variables declared before the body and used after the body for an unrelated purpose.

**no enforcement**

# [ES.7: Keep common and local names short, and keep uncommon and nonlocal names longer](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es7-keep-common-and-local-names-short-and-keep-uncommon-and-nonlocal-names-longer)

- Check length of local and non-local names. Also take function length into account.

**no enforcement**

# [ES.8: Avoid similar-looking names](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es8-avoid-similar-looking-names)

- Check names against a list of known confusing letter and digit combinations.
- Flag a declaration of a variable, function, or enumerator that hides a class or enumeration declared in the same scope

**no enforcement**

# [ES.9: Avoid ALL_CAPS names](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es9-avoid-all_caps-names)

- Flag all uses of ALL CAPS. For older code, accept ALL CAPS for macro names and flag all non-ALL-CAPS macro names.

**no enforcement**

# [ES.10: Declare one name (only) per declaration](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es10-declare-one-name-only-per-declaration)

- Flag variable and constant declarations with multiple declarators (e.g., int* p, q;)

**clang-format**

# [ES.11: Use auto to avoid redundant repetition of type names](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es11-use-auto-to-avoid-redundant-repetition-of-type-names)

- Flag redundant repetition of type names in a declaration.

**clang-tidy: modernize-use-auto**

# [ES.12: Do not reuse names in nested scopes](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es12-do-not-reuse-names-in-nested-scopes)

- Flag reuse of a name in nested local scopes
- Flag reuse of a member name as a local variable in a member function
- Flag reuse of a global name as a local variable or a member name
- Flag reuse of a base class member name in a derived class (except for function names)

**no enforcement, maybe shadow declarations?**

# [ES.20: Always initialize an object](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es20-always-initialize-an-object)

- Flag every uninitialized variable. Don't flag variables of user-defined types with default constructors.
- Check that an uninitialized buffer is written into immediately after declaration. Passing an uninitialized variable as a reference to non-const argument can be assumed to be a write into the variable.

**no enforcement**

# [ES.21: Don't introduce a variable (or constant) before you need to use it](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es21-dont-introduce-a-variable-or-constant-before-you-need-to-use-it)

- Flag declarations that are distant from their first use.

**no enforcement**

# [ES.22: Don't declare a variable until you have a value to initialize it with](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es22-dont-declare-a-variable-until-you-have-a-value-to-initialize-it-with)

- Flag declarations with default initialization that are assigned to before they are first read.
- Flag any complicated computation after an uninitialized variable and before its use.

**no enforcement**

# [ES.23: Prefer the {} initializer syntax](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es23-prefer-the--initializer-syntax)

- Tricky.
- Don't flag uses of = for simple initializers.
- Look for = after auto has been seen.

**no enforcement**

# [ES.24: Use a unique_ptr<T> to hold pointers](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es24-use-a-unique_ptrt-to-hold-pointers)

- Look for raw pointers that are targets of new, malloc(), or functions that may return such pointers.

**clang-tidy: cppcoreguidelines-owning-memory**

# [ES.25: Declare an object const or constexpr unless you want to modify its value later on](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es25-declare-an-object-const-or-constexpr-unless-you-want-to-modify-its-value-later-on)

- Look to see if a variable is actually mutated, and flag it if not.  Unfortunately, it may be impossible to detect when a non-const was not intended to vary (vs when it merely did not vary).

**no enforcement**

# [ES.26: Don't use a variable for two unrelated purposes](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es26-dont-use-a-variable-for-two-unrelated-purposes)

- Flag recycled variables.

**no enforcement**

# [ES.27: Use std::array or stack_array for arrays on the stack](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es27-use-stdarray-or-stack_array-for-arrays-on-the-stack)

- Flag arrays with non-constant bounds (C-style VLAs)
- Flag arrays with non-local constant bounds

**no enforcement**

# [ES.28: Use lambdas for complex initialization, especially of const variables](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es28-use-lambdas-for-complex-initialization-especially-of-const-variables)

- Hard. At best a heuristic. Look for an uninitialized variable followed by a loop assigning to it.

**no enforcement**

# [ES.30: Don't use macros for program text manipulation](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es30-dont-use-macros-for-program-text-manipulation)

- Scream when you see a macro that isn't just used for source control (e.g., #ifdef)

**no enforcement**

# [ES.31: Don't use macros for constants or "functions"](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es31-dont-use-macros-for-constants-or-functions)

- Scream when you see a macro that isn't just used for source control (e.g., #ifdef)

**no enforcement**

# [ES.32: Use ALL_CAPS for all macro names](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es32-use-all_caps-for-all-macro-names)

- Scream when you see a lower case macro.

**clang-tidy: readability-identifier-naming**

# [ES.33: If you must use macros, give them unique names](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es33-if-you-must-use-macros-give-them-unique-names)

- Warn against short macro names.

**no enforcement**

# [ES.34: Don't define a (C-style) variadic function](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#-es34-dont-define-a-c-style-variadic-function)

- Flag definitions of C-style variadic functions.
- Flag #include <cstdarg> and #include <stdarg.h>

**clang-tidy: cppcoreguidelines-pro-type-vararg**

# [ES.40: Avoid complicated expressions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es40-avoid-complicated-expressions)

- side effects: side effects on multiple non-local variables (for some definition of non-local) can be suspect, especially if the side effects are in separate subexpressions
- writes to aliased variables
- more than N operators (and what should N be?)
- reliance of subtle precedence rules
- uses undefined behavior (can we catch all undefined behavior?)
- implementation defined behavior?

**no enforcement**

# [ES.41: If in doubt about operator precedence, parenthesize](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es41-if-in-doubt-about-operator-precedence-parenthesize)

- Flag combinations of bitwise-logical operators and other operators.
- Flag assignment operators not as the leftmost operator.

**no enforcement**

# [ES.42: Keep use of pointers simple and straightforward](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es42-keep-use-of-pointers-simple-and-straightforward) 

- Flag any arithmetic operation on an expression of pointer type that results in a value of pointer type.
- Flag any indexing expression on an expression or variable of array type (either static array or std::array) where the indexer is not a compile-time constant expression with a value between 0 or and the upper bound of the array.
- Flag any expression that would rely on implicit conversion of an array type to a pointer type.

**clang-tidy: cppcoreguidelines-pro-bounds-**

# [ES.43: Avoid expressions with undefined order of evaluation](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es43-avoid-expressions-with-undefined-order-of-evaluation)

- Can be detected by a good analyzer.

**no enforcement**

# [ES.44: Don't depend on order of evaluation of function arguments](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es44-dont-depend-on-order-of-evaluation-of-function-arguments)

- Can be detected by a good analyzer.

**no enforcement**

# [ES.45: Avoid "magic constants"; use symbolic constants](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es45-avoid-magic-constants-use-symbolic-constants)

- Flag literals in code. Give a pass to 0, 1, nullptr, \n, "", and others on a positive list.

**no enforcement**

# [ES.46: Avoid lossy (narrowing, truncating) arithmetic conversions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es46-avoid-lossy-narrowing-truncating-arithmetic-conversions)

 A good analyzer can detect all narrowing conversions. However, flagging all narrowing conversions will lead to a lot of false positives. Suggestions:

- flag all floating-point to integer conversions (maybe only float->char and double->int. Here be dragons! we need data)
- flag all long->char (I suspect int->char is very common. Here be dragons! we need data)
- consider narrowing conversions for function arguments especially suspect

**no enforcement**

# [ES.47: Use nullptr rather than 0 or NULL](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es47-use-nullptr-rather-than-0-or-null)

- Flag uses of 0 and NULL for pointers. The transformation may be helped by simple program transformation.

**clang-tidy: modernize-use-nullptr**

# [ES.48: Avoid casts](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es48-avoid-casts)

- Force the elimination of C-style casts
- Warn if there are many functional style casts (there is an obvious problem in quantifying 'many')
- The type profile bans reinterpret_cast.
- Warn against identity casts between pointer types, where the source and target types are the same (#Pro-type-identitycast)
- Warn if a pointer cast could be implicit

**clang-tidy: cppcoreguidelines-pro-type-const-cast, cppcoreguidelines-pro-type-cstyle-cast, cppcoreguidelines-pro-type-reinterpret-cast, cppcoreguidelines-pro-type-static-cast-downcast**

# [ES.49: If you must use a cast, use a named cast](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es49-if-you-must-use-a-cast-use-a-named-cast)

- Flag C-style and functional casts.
- The type profile bans reinterpret_cast.
- The type profile warns when using static_cast between arithmetic types.

**clang-tidy: same as in ES.48**

**core-check: C26475 NO_FUNCTION_STYLE_CASTS**

# [ES.50: Don't cast away const](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es50-dont-cast-away-const)

- Flag const_casts.
- This rule is part of the type-safety profile for the related Profile.

**clang-tidy: cppcoreguidelines-pro-type-const-cast, cppcoreguidelines-pro-type-cstyle-cast**

# [ES.55: Avoid the need for range checking](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es55-avoid-the-need-for-range-checking)

- Look for explicit range checks and heuristically suggest alternatives.

**clang-tidy: modernize-loop-convert**

# [ES.56: Write std::move() only when you need to explicitly move an object to another scope](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es56-write-stdmove-only-when-you-need-to-explicitly-move-an-object-to-another-scope)

- Flag use of std::move(x) where x is an rvalue or the language will already treat it as an rvalue, including return std::move(local_variable); and std::move(f()) on a function that returns by value.
- Flag functions taking an S&& parameter if there is no const S& overload to take care of lvalues.
- Flag a std::moves argument passed to a parameter, except when the parameter type is one of the following: an X&& rvalue reference; a T&& forwarding reference where T is a template parameter type; or by value and the type is move-only.
- Flag when std::move is applied to a forwarding reference (T&& where T is a template parameter type). Use std::forward instead.
- Flag when std::move is applied to other than an rvalue reference. (More general case of the previous rule to cover the non-forwarding cases.)
- Flag when std::forward is applied to an rvalue reference (X&& where X is a concrete type). Use std::move instead.
- Flag when std::forward is applied to other than a forwarding reference. (More general case of the previous rule to cover the non-moving cases.)
- Flag when an object is potentially moved from and the next operation is a const operation; there should first be an intervening non-const operation, ideally assignment, to first reset the object's value.

**no enforcement**

# [ES.60: Avoid new and delete outside resource management functions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es60-avoid-new-and-delete-outside-resource-management-functions)

- Flag naked news and naked deletes

**clang-tidy: cppcoreguidelines-owning-memory**

# [ES.61: Delete arrays using delete[] and non-arrays using delete](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es61-delete-arrays-using-delete-and-non-arrays-using-delete)

- if the new and the delete is in the same scope, mistakes can be flagged.
- if the new and the delete are in a constructor/destructor pair, mistakes can be flagged.

**clang-static-analyzer:  cplusplus.NewDelete  
clang-tidy: clang-analyzer-cplusplus.NewDelete**

# [ES.63: Don't slice](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es63-dont-slice)

- Warn against slicing.

**clang-tidy: cppcoreguidelines-slicing**

**core-check: C26437 DONT_SLICE**

# [ES.64: Use the T{e}notation for construction](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es64-use-the-tenotation-for-construction)

- Flag the C-style (T)e and functional-style T(e) casts.

**no enforcement?, castingwarnings are done**

# [ES.65: Don't dereference an invalid pointer](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es65-dont-dereference-an-invalid-pointer)

- Flag a dereference of a pointer that points to an object that has gone out of scope
- Flag a dereference of a pointer that may have been invalidated by assigning a nullptr
- Flag a dereference of a pointer that may have been invalidated by a delete
- Flag a dereference to a pointer to a container element that may have been invalidated by dereference

**clang-tidy: bugprone-use-after-move, clang-analyzer-core.NullDereference  
Adress Sanitizer, Memory Sanitizer, Thread Sanitizer, Undefined Behaviour
Sanitizer**


# [ES.70: Prefer a switch-statement to an if-statement when there is a choice](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es70-prefer-a-switch-statement-to-an-if-statement-when-there-is-a-choice)

- Flag if-then-else chains that check against constants (only).

**no enforcement**

# [ES.71: Prefer a range-for-statement to a for-statement when there is a choice](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es71-prefer-a-range-for-statement-to-a-for-statement-when-there-is-a-choice)

- Look at loops, if a traditional loop just looks at each element of a sequence, and there are no side effects on what it does with the elements, rewrite the loop to a ranged-for loop.

**clang-tidy: modernize-loop-convert**

# [ES.73: Prefer a while-statement to a for-statement when there is no obvious loop variable](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es73-prefer-a-while-statement-to-a-for-statement-when-there-is-no-obvious-loop-variable)

- Flag actions in for-initializers and for-increments that do not relate to the for-condition.

**no enforcement**

# [ES.74: Prefer to declare a loop variable in the initializer part of a for-statement](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es74-prefer-to-declare-a-loop-variable-in-the-initializer-part-of-a-for-statement)

- Warn when a variable modified inside the for-statement is declared outside the loop and not being used outside the loop.

**no enforcement**

# [ES.75: Avoid do-statements](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es75-avoid-do-statements)

- Flag do-statements.

**no enforcement**

# [ES.76: Avoid goto](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es76-avoid-goto)

- Flag goto. Better still flag all gotos that do not jump from a nested loop to the statement immediately after a nest of loops.

**core-check: C26438 NO_GOTO**

**clang-tidy: cppcoreguidelines-avoid-goto**

# [ES.78: Always end a non-empty case with a break](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es78-always-end-a-non-empty-case-with-a-break)

- Flag all fallthroughs from non-empty cases.

**no enforcement**

# [ES.79: Use default to handle common cases (only)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es79-use-default-to-handle-common-cases-only)

- Flag switch-statements over an enumeration that don't handle all enumerators and do not have a default. This may yield too many false positives in some code bases; if so, flag only switches that handle most but not all cases (that was the strategy of the very first C++ compiler).

**clang-diagnostics: -Wswitch**

# [ES.84: Don't (try to) declare a local variable with no name](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es84-dont-try-to-declare-a-local-variable-with-no-name)

- Flag statements that are just a temporary

**no enforcement**

# [ES.85: Make empty statements visible](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es85-make-empty-statements-visible)

- Flag empty statements that are not blocks and don't contain comments.

**no enforcement**

# [ES.86: Avoid modifying loop control variables inside the body of raw for-loops](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es86-avoid-modifying-loop-control-variables-inside-the-body-of-raw-for-loops)

- Flag variables that are potentially updated (have a non-const use) in both the loop control iteration-expression and the loop body.

**no enforcement**

# [ES.87: Don't add redundant == or != to conditions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es87-dont-add-redundant--or--to-conditions)

- Easy, just check for redundant use of != and == in conditions.

**clang-tidy: misc-redundant-expression, readability-simplify-boolean-expr**

# [ES.100: Don't mix signed and unsigned arithmetic](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es100-dont-mix-signed-and-unsigned-arithmetic)

- Compilers already know and sometimes warn.

**no enforcement**  
in essence the same rule as ES.102

# [ES.101: Use unsigned types for bit manipulation](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es101-use-unsigned-types-for-bit-manipulation)

- Just about impossible in general because of the use of unsigned subscripts in the standard library

**clang-tidy: hicpp-signed-bitwise**

# [ES.102: Use signed types for arithmetic](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es102-use-signed-types-for-arithmetic)

- Flag mixed signed and unsigned arithmetic
- Flag results of unsigned arithmetic assigned to or printed as signed.
- Flag unsigned literals (e.g. -2) used as container subscripts.

**no enforcement**

# [ES.103: Don't overflow](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es103-dont-overflow)

- no static enforcement!

**Undefined Behaviour Sanitizer**

# [ES.104: Don't underflow](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es104-dont-underflow)

- no static enforcement!

**Undefined Behaviour Sanitizer**

# [ES.105: Don't divide by zero](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es105-dont-divide-by-zero)

- Flag division by an integral value that could be zero

**clang-static-analyzer: core.DivideZero  
clang-tidy: clang-analyzer-code.DivideZero  
Undefined Behaviour Sanizier**

# [ES.106: Don't try to avoid negative values by using unsigned](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es106-dont-try-to-avoid-negative-values-by-using-unsigned)

- Hard: there is a lot of code using unsigned and we don't offer a practical positive number type.

**no enforcement**

# [ES.107: Don't use unsigned for subscripts](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#es107-dont-use-unsigned-for-subscripts)

- Very tricky as long as the standard-library containers get it wrong.

**no enforcement**
