# [C.2: Use class if the class has an invariant; use struct if the data members can vary independently](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c2-use-class-if-the-class-has-an-invariant-use-struct-if-the-data-members-can-vary-independently)

- Look for structs with all data private and classes with public members.

**no enforcement**

# [C.4: Make a function a member only if it needs direct access to the representation of a class](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c4-make-a-function-a-member-only-if-it-needs-direct-access-to-the-representation-of-a-class)

- Look for non-virtual member functions that do not touch data members directly. The snag is that many member functions that do not need to touch data members directly do.
- Ignore virtual functions.
- Ignore functions that are part of an overload set out of which at least one function accesses private members.
- Ignore functions returning this.

**no enforcement**

# [C.5: Place helper functions in the same namespace as the class they support](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c5-place-helper-functions-in-the-same-namespace-as-the-class-they-support)

- Flag global functions taking argument types from a single namespace.

**no enforcement**

# [C.7: Don't define a class or enum and declare a variable of its type in the same statement](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c7-dont-define-a-class-or-enum-and-declare-a-variable-of-its-type-in-the-same-statement)

- Flag if the } of a class or enumeration definition is not followed by a ;. The ; is missing.

**no enforcement**

# [C.8: Use class rather than struct if any member is non-public](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c8-use-class-rather-than-struct-if-any-member-is-non-public)

- Flag classes declared with struct if there is a private or protected member.

**no enforcement, see C.2**

# [C.9: Minimize exposure of members](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c9-minimize-exposure-of-members)

- Flag protected data.
- Flag mixtures of public and private data

**no enforcement**

# [C.21: If you define or =delete any default operation, define or =delete them all](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c21-if-you-define-or-delete-any-default-operation-define-or-delete-them-all)

- (Simple) A class should have a declaration (even a =delete one) for either all or none of the special functions)

**clang-tidy: cppcoreguidelines-cppcoreguidelines-special-member-functions**

# [C.22: Make default operations consistent](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c22-make-default-operations-consistent)

- (Complex) A copy/move constructor and the corresponding copy/move assignment operator should write to the same member variables at the same level of dereference.
- (Complex) Any member variables written in a copy/move constructor should also be initialized by all other constructors.
- (Complex) If a copy/move constructor performs a deep copy of a member variable, then the destructor should modify the member variable.
- (Complex) If a destructor is modifying a member variable, that member variable should be written in any copy/move constructors or assignment operators.

**no enforcement**

# [C.30: Define a destructor if a class needs an explicit action at object destruction](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c30-define-a-destructor-if-a-class-needs-an-explicit-action-at-object-destruction)

- Look for likely "implicit resources", such as pointers and references. Look for classes with destructors even though all their data members have destructors.

**clang-tidy: cppcoreguidelines-owning-memory**

# [C.31: All resources acquired by a class must be released by the class's destructor](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c31-all-resources-acquired-by-a-class-must-be-released-by-the-classs-destructor)

- (Simple) If a class has pointer or reference member variables that are owners (e.g., deemed owners by using gsl::owner), then they should be referenced in its destructor.
- (Hard) Determine if pointer or reference member variables are owners when there is no explicit statement of ownership (e.g., look into the constructors).

**clang-tidy: cppcoreguidelines-owning-memory**  
TODO: the check only ensures the existence of a destructor, but not if the member is used

# [C.32: If a class has a raw pointer (T*) or reference (T&), consider whether it might be owning](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c32-if-a-class-has-a-raw-pointer-t-or-reference-t-consider-whether-it-might-be-owning)

- Look at the initialization of raw member pointers and member references and see if an allocation is used.

**clang-tidy: cppcoreguidelines-owning-memory**  

# [C.33: If a class has an owning pointer member, define a destructor](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c33-if-a-class-has-an-owning-pointer-member-define-a-destructor)

- A class with a pointer data member is suspect.
- A class with an owner<T> should define its default operations.

**clang-tidy: cppcoreguidelines-owning-memory**  
TODO: Rule of 5 is not enforced

# [C.35: A base class destructor should be either public and virtual, or protected and nonvirtual](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c35-a-base-class-destructor-should-be-either-public-and-virtual-or-protected-and-nonvirtual)

- A class with any virtual functions should have a destructor that is either public and virtual or else protected and nonvirtual.

**no enforcement**

# [C.36: A destructor may not fail](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c36-a-destructor-may-not-fail)

- (Simple) A destructor should be declared noexcept if it could throw.

**no enforcement, but there is something in the pipeline**

# [C.37: Make destructors noexcept](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c37-make-destructors-noexcept)

- (Simple) A destructor should be declared noexcept if it could throw.

**no enforcement, same as C.36**

# [C.40: Define a constructor if a class has an invariant](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c40-define-a-constructor-if-a-class-has-an-invariant)

- Flag classes with user-defined copy operations but no constructor (a user-defined copy is a good indicator that the class has an invariant)

**Rule of 5?, clang-tidy: cppcoreguidelines-special-member-functions**

# [C.41: A constructor should create a fully initialized object](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c41-a-constructor-should-create-a-fully-initialized-object)

- (Simple) Every constructor should initialize every member variable (either explicitly, via a delegating ctor call or via default construction).
- (Unknown) If a constructor has an Ensures contract, try to see if it holds as a postcondition.

**warnings for uninitialized members?!**

# [C.43: Ensure that a value type class has a default constructor](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c43-ensure-that-a-value-type-class-has-a-default-constructor)

- Flag classes that are copyable by = or comparable with == without a default constructor

# [C.44: Prefer default constructors to be simple and non-throwing](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c44-prefer-default-constructors-to-be-simple-and-non-throwing)

- Flag throwing default constructors

# [C.45: Don't define a default constructor that only initializes data members; use in-class member initializers instead](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c45-dont-define-a-default-constructor-that-only-initializes-data-members-use-in-class-member-initializers-instead)

- (Simple) A default constructor should do more than just initialize member variables with constants.

**no enforcement but clang-tidy: cppcoreguidelines-pro-type-member-init**

# [C.46: By default, declare single-argument constructors explicit](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c46-by-default-declare-single-argument-constructors-explicit)

- (Simple) Single-argument constructors should be declared explicit. Good single argument non-explicit constructors are rare in most code based. Warn for all that are not on a "positive list".

**clang-tidy: google-explicit-constructor**

# [C.47: Define and initialize member variables in the order of member declaration](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c47-define-and-initialize-member-variables-in-the-order-of-member-declaration)

- (Simple) A member initializer list should mention the members in the same order they are declared

**warning for misordered exists**

# [C.48: Prefer in-class initializers to member initializers in constructors for constant initializers](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c48-prefer-in-class-initializers-to-member-initializers-in-constructors-for-constant-initializers)

- (Simple) Every constructor should initialize every member variable (either explicitly, via a delegating ctor call or via default construction).
- (Simple) Default arguments to constructors suggest an in-class initializer may be more appropriate.

**clang-tidy: cppcoreguidelines-pro-type-member-init**

# [C.49: Prefer initialization to assignment in constructors](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c49-prefer-initialization-to-assignment-in-constructors)

- Missing, but should be done!

**no enforcement**

# [C.51: Use delegating constructors to represent common actions for all constructors of a class](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c51-use-delegating-constructors-to-represent-common-actions-for-all-constructors-of-a-class)

- (Moderate) Look for similar constructor bodies.

**clang-tidy: misc-undelegated-constructor**

# [C.52: Use inheriting constructors to import constructors into a derived class that does not need further explicit initialization](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c52-use-inheriting-constructors-to-import-constructors-into-a-derived-class-that-does-not-need-further-explicit-initialization)

- Make sure that every member of the derived class is initialized.

**clang-tidy: cppcoreguidelines-pro-type-member-init**

# [C.60: Make copy assignment non-virtual, take the parameter by const&, and return by non-const&](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c60-make-copy-assignment-non-virtual-take-the-parameter-by-const-and-return-by-non-const)


