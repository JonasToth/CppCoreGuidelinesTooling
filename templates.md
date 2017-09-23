# [T.1: Use templates to raise the level of abstraction of code](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t1-use-templates-to-raise-the-level-of-abstraction-of-code)

- Flag algorithms with "overly simple" requirements, such as direct use of specific operators without a concept.
- Do not flag the definition of the "overly simple" concepts themselves; they may simply be building blocks for more useful concepts.

**no enforcement**

# [T.3: Use templates to express containers and ranges](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t3-use-templates-to-express-containers-and-ranges)

- Flag uses of void\*s and casts outside low-level implementation code

**see casting checks, but not directly enforced**

# [T.10: Specify concepts for all template arguments](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t10-specify-concepts-for-all-template-arguments)

- Flag template type arguments without concepts

**no enforcement**

# [T.11: Whenever possible use standard concepts](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t11-whenever-possible-use-standard-concepts)

- Look for unconstrained arguments, templates that use "unusual"/non-standard concepts, templates that use "homebrew" concepts without axioms.
- Develop a concept-discovery tool (e.g., see an early experiment).

**no enforcement**

# [T.13: Prefer the shorthand notation for simple, single-type argument concepts](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t13-prefer-the-shorthand-notation-for-simple-single-type-argument-concepts)

- Not feasible in the short term when people convert from the <typename T> and <class T> notation.
- Later, flag declarations that first introduces a typename and then constrains it with a simple, single-type-argument concept.

**no enforcement**

# [T.20: Avoid "concepts" without meaningful semantics](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t20-avoid-concepts-without-meaningful-semantics)

- Flag single-operation concepts when used outside the definition of other concepts.
- Flag uses of enable_if that appears to simulate single-operation concepts.

**no enforcement**

# [T.21: Require a complete set of operations for a concept](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t21-require-a-complete-set-of-operations-for-a-concept)

- Flag classes the support "odd" subsets of a set of operators, e.g., == but not != or + but not -. Yes, std::string is "odd", but it's too late to change that.

**no enforcement**

# [T.22: Specify axioms for concepts](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t22-specify-axioms-for-concepts)

- Look for the word "axiom" in concept definition comments

**no enforcement**

# [T.23: Differentiate a refined concept from its more general case by adding new use patterns.](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t23-differentiate-a-refined-concept-from-its-more-general-case-by-adding-new-use-patterns)

- Flag a concept that has exactly the same requirements as another already-seen concept (neither is more refined). To disambiguate them, see T.24.

**no enforcement**

# [T.24: Use tag classes or traits to differentiate concepts that differ only in semantics](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t24-use-tag-classes-or-traits-to-differentiate-concepts-that-differ-only-in-semantics)

- The compiler flags ambiguous use of identical concepts.
- Flag the definition of identical concepts.

**no enforcement**

# [T.25: Avoid complementary constraints](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t25-avoid-complementary-constraints)

- Flag pairs of functions with C<T> and !C<T> constraints

**no enforcement**

# [T.40: Use function objects to pass operations to algorithms](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t40-use-function-objects-to-pass-operations-to-algorithms)

- Flag pointer to function template arguments.
- Flag pointers to functions passed as arguments to a template (risk of false positives).

**no enforcement**

# [T.42: Use template aliases to simplify notation and hide implementation details](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t42-use-template-aliases-to-simplify-notation-and-hide-implementation-details) 

- Flag use of typename as a disambiguator outside using declarations.

**no enforcement**

# [T.43: Prefer using over typedef for defining aliases](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t43-prefer-using-over-typedef-for-defining-aliases)

- Flag uses of typedef. This will give a lot of "hits" :-(

**clang-tidy: modernize-use-using**

# [T.44: Use function templates to deduce class template argument types (where feasible)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t44-use-function-templates-to-deduce-class-template-argument-types-where-feasible)

- Flag uses where an explicitly specialized type exactly matches the types of the arguments used.

**no enforcement**

# [T.46: Require template arguments to be at least Regular or SemiRegular](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t46-require-template-arguments-to-be-at-least-regular-or-semiregular)

- Flag types that are not at least SemiRegular.

**no enforcement**

# [T.47: Avoid highly visible unconstrained templates with common names](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t47-avoid-highly-visible-unconstrained-templates-with-common-names)

- Flag templates defined in a namespace where concrete types are also defined (maybe not feasible until we have concepts).

**no enforcement**

# [T.61: Do not over-parameterize members (SCARY)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t61-do-not-over-parameterize-members-scary)

- Flag member types that do not depend on every template argument
- Flag member functions that do not depend on every template argument

**no enforcement**

# [T.68: Use {} rather than () within templates to avoid ambiguities](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t68-use--rather-than--within-templates-to-avoid-ambiguities)

- flag () initializers
- flag function-style casts

**no enforcement**

# [T.69: Inside a template, don't make an unqualified nonmember function call unless you intend it to be a customization point](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t69-inside-a-template-dont-make-an-unqualified-nonmember-function-call-unless-you-intend-it-to-be-a-customization-point)

- In a template, flag an unqualified call to a nonmember function that passes a variable of dependent type when there is a nonmember function of the same name in the template's namespace.

**no enforcement**

# [T.80: Do not naively templatize a class hierarchy](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t80-do-not-naively-templatize-a-class-hierarchy)

- Flag virtual functions that depend on a template argument. ??? False positives

**no enforcement**

# [T.81: Do not mix hierarchies and arrays](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t81-do-not-mix-hierarchies-and-arrays)

- Detect this horror!

**no enforcement**

# [T.100: Use variadic templates when you need a function that takes a variable number of arguments of a variety of types](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t100-use-variadic-templates-when-you-need-a-function-that-takes-a-variable-number-of-arguments-of-a-variety-of-types)

- Flag uses of va_arg in user code.

**clang-tidy: cppcoreguidelines-pro-type-vararg**

# [T.123: Use constexpr functions to compute values at compile time](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t123-use-constexpr-functions-to-compute-values-at-compile-time)
    
- Flag template metaprograms yielding a value. These should be replaced with constexpr functions.

**no enforcement**

# [T.140: Name all operations with potential for reuse](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t140-name-all-operations-with-potential-for-reuse)

- (hard) flag similar lambdas

**codechecker has similarity check, otherwise no enforcement**

# [T.141: Use an unnamed lambda if you need a simple function object in one place only](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t141-use-an-unnamed-lambda-if-you-need-a-simple-function-object-in-one-place-only)

- Look for identical and near identical lambdas (to be replaced with named functions or named lambdas).

**codechecker has similarity check, otherwise no enforcement**

# [T.143: Don't write unintentionally nongeneric code](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t143-dont-write-unintentionally-nongeneric-code)

- Flag comparison of iterators using < instead of !=.
- Flag x.size() == 0 when x.empty() or x.is_empty() is available.  Emptiness works for more containers than size(), because some containers don't know their size or are conceptually of unbounded size.
- Flag functions that take a pointer or reference to a more-derived type but only use functions declared in a base type.

**partial, clang-tidy: readability-container-size-empty**

# [T.144: Don't specialize function templates](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#t144-dont-specialize-function-templates)

- Flag all specializations of a function template. Overload instead.  

**no enforcement**
