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

**core-check:
C26432 DEFINE_OR_DELETE_SPECIAL_OPS**

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

**clang-tidy: cppcoreguidelines-owning-memory,cppcoreguidelines-special-member-functions**

# [C.35: A base class destructor should be either public and virtual, or protected and nonvirtual](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c35-a-base-class-destructor-should-be-either-public-and-virtual-or-protected-and-nonvirtual)

- A class with any virtual functions should have a destructor that is either public and virtual or else protected and nonvirtual.

**core-check:
C26436 NEED_VIRTUAL_DTOR**

# [C.36: A destructor may not fail](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c36-a-destructor-may-not-fail)

- (Simple) A destructor should be declared noexcept if it could throw.

**no enforcement, but there is something in the pipeline**

# [C.37: Make destructors noexcept](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c37-make-destructors-noexcept)

- (Simple) A destructor should be declared noexcept if it could throw.

**no enforcement, same as C.36**

# [C.40: Define a constructor if a class has an invariant](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c40-define-a-constructor-if-a-class-has-an-invariant)

- Flag classes with user-defined copy operations but no constructor (a user-defined copy is a good indicator that the class has an invariant)

**clang-tidy: cppcoreguidelines-special-member-functions**

# [C.41: A constructor should create a fully initialized object](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c41-a-constructor-should-create-a-fully-initialized-object)

- (Simple) Every constructor should initialize every member variable (either explicitly, via a delegating ctor call or via default construction).
- (Unknown) If a constructor has an Ensures contract, try to see if it holds as a postcondition.

**clang-tidy: bugprone-copy-constructor-init**  
**clang: -Wuninitialized**

# [C.43: Ensure that a value type class has a default constructor](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c43-ensure-that-a-value-type-class-has-a-default-constructor)

- Flag classes that are copyable by = or comparable with == without a default constructor

**no enforcement**

# [C.44: Prefer default constructors to be simple and non-throwing](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c44-prefer-default-constructors-to-be-simple-and-non-throwing)

- Flag throwing default constructors

**no enforcement**

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

- (Simple) An assignment operator should not be virtual. Here be dragons!
- (Simple) An assignment operator should return T& to enable chaining, not alternatives like const T& which interfere with composability and putting objects in containers.
- (Moderate) An assignment operator should (implicitly or explicitly) invoke all base and member assignment operators. Look at the destructor to determine if the type has pointer semantics or value semantics.

**no enforcement**

# [C.62: Make copy assignment safe for self-assignment](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c62-make-copy-assignment-safe-for-self-assignment)

- (Simple) Assignment operators should not contain the pattern if (this == &a) return *this; ???

**no enforcement**

# [C.63: Make move assignment non-virtual, take the parameter by &&, and return by non-const &](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c63-make-move-assignment-non-virtual-take-the-parameter-by--and-return-by-non-const-)

- (Simple) An assignment operator should not be virtual. Here be dragons!
- (Simple) An assignment operator should return T& to enable chaining, not alternatives like const T& which interfere with composability and putting objects in containers.
- (Moderate) A move assignment operator should (implicitly or explicitly) invoke all base and member move assignment operators.

**no enforcement**

# [C.66: Make move operations noexcept](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c66-make-move-operations-noexcept)

- (Simple) A move operation should be marked noexcept.

**clang-tidy: performance-noexcept-move-constructor**

# [C.67: A base class should suppress copying, and provide a virtual clone instead if "copying" is desired](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c67-a-base-class-should-suppress-copying-and-provide-a-virtual-clone-instead-if-copying-is-desired)

- A class with any virtual function should not have a copy constructor or copy assignment operator (compiler-generated or handwritten).

**no enforcement**

# [C.80: Use =default if you have to be explicit about using the default semantics](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c80-use-default-if-you-have-to-be-explicit-about-using-the-default-semantics)

- (Moderate) The body of a special operation should not have the same accessibility and semantics as the compiler-generated version, because that would be redundant

**clang-tidy: modernize-use-equals-default**

# [C.81: Use =delete when you want to disable default behavior (without wanting an alternative)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c81-use-delete-when-you-want-to-disable-default-behavior-without-wanting-an-alternative)

- The elimination of a default operation is (should be) based on the desired semantics of the class. Consider such classes suspect, but maintain a "positive list" of classes where a human has asserted that the semantics is correct.

**clang-tidy: modernize-use-equals-delete**

# [C.82: Don't call virtual functions in constructors and destructors](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c82-dont-call-virtual-functions-in-constructors-and-destructors)

- Flag calls of virtual functions from constructors and destructors.

**clang-static-analyzer: alpha.cplusplus.VirtualCall **

# [C.83: For value-like types, consider providing a noexcept swap function](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c83-for-value-like-types-consider-providing-a-noexcept-swap-function) 

- (Simple) A class without virtual functions should have a swap member function declared.
- (Simple) When a class has a swap member function, it should be declared noexcept.

**no enforcement**

# [C.84: A swap function may not fail](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c84-a-swap-function-may-not-fail)

- (Simple) When a class has a swap member function, it should be declared noexcept.

**no enforcement**

# [C.85: Make swap noexcept](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c85-make-swap-noexcept)

- (Simple) When a class has a swap member function, it should be declared noexcept.

**no enforcement, same as C.84**

# [C.86: Make == symmetric with respect to operand types and noexcept](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c86-make--symmetric-with-respect-to-operand-types-and-noexcept)

- Flag an operator==() for which the argument types differ; same for other comparison operators: !=, <, <=, >, and >=.
- Flag member operator==()s; same for other comparison operators: !=, <, <=, >, and >=.

**no enforcement**

# [C.87: Beware of == on base classes](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c87-beware-of--on-base-classes)

- Flag a virtual operator==(); same for other comparison operators: !=, <, <=, >, and >=.

**no enforcement**

# [C.89: Make a hash noexcept](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c89-make-a-hash-noexcept)

- Flag throwing hashes.

**no enforcement**

# [C.120: Use class hierarchies to represent concepts with inherent hierarchical structure (only)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c120-use-class-hierarchies-to-represent-concepts-with-inherent-hierarchical-structure-only)

- Look for classes with lots of members that do nothing but throw.
- Flag every use of a nonpublic base class B where the derived class D does not override a virtual function or access a protected member in B, and B is not one of the following: empty, a template parameter or parameter pack of D, a class template specialized with D.

**no enforcement**

# [C.121: If a base class is used as an interface, make it a pure abstract class](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c121-if-a-base-class-is-used-as-an-interface-make-it-a-pure-abstract-class)

- Warn on any class that contains data members and also has an overridable (non-final) virtual function.

**no enforcement**

# [C.126: An abstract class typically doesn't need a constructor](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c126-an-abstract-class-typically-doesnt-need-a-constructor)

- Flag abstract classes with constructors.

**no enforcement**

# [C.127: A class with a virtual function should have a virtual or protected destructor](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c127-a-class-with-a-virtual-function-should-have-a-virtual-or-protected-destructor)

- A class with any virtual functions should have a destructor that is either public and virtual or else protected and nonvirtual.
- Flag delete of a class with a virtual function but no virtual destructor.

**no enforcement**

# [C.128: Virtual functions should specify exactly one of virtual, override, or final](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c128-virtual-functions-should-specify-exactly-one-of-virtual-override-or-final)

- Compare names in base and derived classes and flag uses of the same name that does not override.
- Flag overrides with neither override nor final.
- Flag function declarations that use more than one of virtual, override, and final.

**clang-tidy: modernize-use-override**

**core-check:
C26434 DONT_HIDE_METHODS**

# [C.129: When designing a class hierarchy, distinguish between implementation inheritance and interface inheritance](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c129-when-designing-a-class-hierarchy-distinguish-between-implementation-inheritance-and-interface-inheritance)

- Flag a derived to base conversion to a base with both data and virtual functions (except for calls from a derived class member to a base class member)

**no enforcement**

# [C.130: Redefine or prohibit copying for a base class; prefer a virtual clone function instead](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c130-redefine-or-prohibit-copying-for-a-base-class-prefer-a-virtual-clone-function-instead)

- Flag a class with a virtual function and a non-user-defined copy operation.
- Flag an assignment of base class objects (objects of a class from which another has been derived).

**no enforcement**

# [C.131: Avoid trivial getters and setters](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c131-avoid-trivial-getters-and-setters)

- Flag multiple get and set member functions that simply access a member without additional semantics.

**no enforcement**

# [C.132: Don't make a function virtual without reason](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c132-dont-make-a-function-virtual-without-reason)

- Flag a class with virtual functions but no derived classes.
- Flag a class where all member functions are virtual and have implementations.

**no enforcement**

# [C.133: Avoid protected data](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c133-avoid-protected-data)

- Flag classes with protected data.

**no enforcement**

# [C.134: Ensure all non-const data members have the same access level](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c134-ensure-all-non-const-data-members-have-the-same-access-level)

- Flag any class that has non-const data members with different access levels.

**no enforcement**

# [C.137: Use virtual bases to avoid overly general base classes](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c137-use-virtual-bases-to-avoid-overly-general-base-classes)

- Flag mixed interface and implementation hierarchies.

**no enforcement**

# [C.138: Create an overload set for a derived class and its bases with using](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c138-create-an-overload-set-for-a-derived-class-and-its-bases-with-using)

- Diagnose name hiding

**no enforcement**

# [C.139: Use final sparingly](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c139-use-final-sparingly)

- Flag uses of final.

**no enforcement**

# [C.140: Do not provide different default arguments for a virtual function and an overrider](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c140-do-not-provide-different-default-arguments-for-a-virtual-function-and-an-overrider)

- Flag default arguments on virtual functions if they differ between base and derived declarations

**no enforcement**

# [C.145: Access polymorphic objects through pointers and references](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c145-access-polymorphic-objects-through-pointers-and-references)

- Flag all slicing.

**clang-tidy: cppcoreguidelines-slicing**

# [C.146: Use dynamic_cast where class hierarchy navigation is unavoidable](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c146-use-dynamic_cast-where-class-hierarchy-navigation-is-unavoidable)

- Flag all uses of static_cast for downcasts, including C-style casts that perform a static_cast.

**clang-tidy: cppcoreguidelines-pro-type-static-cast-downcast**

# [C.148: Use dynamic_cast to a pointer type when failure to find the required class is considered a valid alternative](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c148-use-dynamic_cast-to-a-pointer-type-when-failure-to-find-the-required-class-is-considered-a-valid-alternative)

- (Complex) Unless there is a null test on the result of a dynamic_cast of a pointer type, warn upon dereference of the pointer.

**no enforcement**

# [C.149: Use unique_ptr or shared_ptr to avoid forgetting to delete objects created using new](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c149-use-unique_ptr-or-shared_ptr-to-avoid-forgetting-to-delete-objects-created-using-new)

- Flag initialization of a naked pointer with the result of a new
- Flag delete of local variable

**clang-tidy: cppcoreguidelines-owning-memory**

# [C.150: Use make_unique() to construct objects owned by unique_ptrs](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c150-use-make_unique-to-construct-objects-owned-by-unique_ptrs)

- Flag the repetitive usage of template specialization list <Foo>
- Flag variables declared to be unique_ptr<Foo>

**clang-tidy: modernize-make-unique**

# [C.151: Use make_shared() to construct objects owned by shared_ptrs](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c151-use-make_shared-to-construct-objects-owned-by-shared_ptrs)

- Flag the repetitive usage of template specialization list<Bar>
- Flag variables declared to be shared_ptr<Bar>

**clang-tidy: modernize-make-shared**

# [C.152: Never assign a pointer to an array of derived class objects to a pointer to its base](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c152-never-assign-a-pointer-to-an-array-of-derived-class-objects-to-a-pointer-to-its-base)

- Flag all combinations of array decay and base to derived conversions.
- Pass an array as a span rather than as a pointer, and don't let the array name suffer a derived-to-base conversion before getting into the span

**no enforcement**

# [C.161: Use nonmember functions for symmetric operators](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c161-use-nonmember-functions-for-symmetric-operators)

- Flag member operator functions.

**no enforcement**

# [C.164: Avoid conversion operators](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c164-avoid-conversion-operators)

- Flag all conversion operators.

**no enforcement**

# [C.166: Overload unary & only as part of a system of smart pointers and references](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c166-overload-unary--only-as-part-of-a-system-of-smart-pointers-and-references)

- Tricky. Warn if & is user-defined without also defining -> for the result type.

**no enforcement**

# [C.168: Define overloaded operators in the namespace of their operands](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c168-define-overloaded-operators-in-the-namespace-of-their-operands)

- Flag operator definitions that are not it the namespace of their operands

**no enforcement**

# [C.167: Use an operator for an operation with its conventional meaning](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#c167-use-an-operator-for-an-operation-with-its-conventional-meaning)

- Tricky. Requires semantic insight.
- Comment by Jonas: Return type must be equivalent to the builtin version (see HIC++)

**no enforcement**
