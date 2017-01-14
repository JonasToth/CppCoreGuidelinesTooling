

# C
* [C.concrete: Concrete types](#SS-concrete)
* [C.hier: Class hierarchies](#SS-hier)
* [C.over: Overloading and overloaded operators](#SS-overload)
* [C.con: Containers and other resource handles](#SS-containers)
* [C.1: Organize related data into structures (`struct`s or `class`es)](#Rc-org)
* [C.2: Use `class` if the class has an invariant; use `struct` if the data members can vary independently](#Rc-struct)
* [C.3: Represent the distinction between an interface and an implementation using a class](#Rc-interface)
* [C.4: Make a function a member only if it needs direct access to the representation of a class](#Rc-member)
* [C.5: Place helper functions in the same namespace as the class they support](#Rc-helper)
* [C.7: Don't define a class or enum and declare a variable of its type in the same statement](#Rc-standalone)
* [C.8: Use `class` rather than `struct` if any member is non-public](#Rc-class)
* [C.9: Minimize exposure of members](#Rc-private)
* [C.concrete: Concrete types](#SS-concrete)
* [C.ctor: Constructors, assignments, and destructors](#S-ctor)
* [C.con: Containers and other resource handles](#SS-containers)
* [C.lambdas: Function objects and lambdas](#SS-lambdas)
* [C.hier: Class hierarchies (OOP)](#SS-hier)
* [C.over: Overloading and overloaded operators](#SS-overload)
* [C.union: Unions](#SS-union)
* [C.10: Prefer a concrete type over more complicated classes](#Rc-concrete)
* [C.11: Make concrete types regular](#Rc-regular)
* [C.20: If you can avoid defining any default operations, do](#Rc-zero)
* [C.21: If you define or `=delete` any default operation, define or `=delete` them all](#Rc-five)
* [C.22: Make default operations consistent](#Rc-matched)
* [C.30: Define a destructor if a class needs an explicit action at object destruction](#Rc-dtor)
* [C.31: All resources acquired by a class must be released by the class's destructor](#Rc-dtor-release)
* [C.32: If a class has a raw pointer (`T*`) or reference (`T&`), consider whether it might be owning](#Rc-dtor-ptr)
* [C.33: If a class has an owning pointer member, define or `=delete` a destructor](#Rc-dtor-ptr2)
* [C.34: If a class has an owning reference member, define or `=delete` a destructor](#Rc-dtor-ref)
* [C.35: A base class with a virtual function needs a virtual destructor](#Rc-dtor-virtual)
* [C.36: A destructor may not fail](#Rc-dtor-fail)
* [C.37: Make destructors `noexcept`](#Rc-dtor-noexcept)
* [C.40: Define a constructor if a class has an invariant](#Rc-ctor)
* [C.41: A constructor should create a fully initialized object](#Rc-complete)
* [C.42: If a constructor cannot construct a valid object, throw an exception](#Rc-throw)
* [C.43: Ensure that a class has a default constructor](#Rc-default0)
* [C.44: Prefer default constructors to be simple and non-throwing](#Rc-default00)
* [C.45: Don't define a default constructor that only initializes data members; use member initializers instead](#Rc-default)
* [C.46: By default, declare single-argument constructors `explicit`](#Rc-explicit)
* [C.47: Define and initialize member variables in the order of member declaration](#Rc-order)
* [C.48: Prefer in-class initializers to member initializers in constructors for constant initializers](#Rc-in-class-initializer)
* [C.49: Prefer initialization to assignment in constructors](#Rc-initialize)
* [C.50: Use a factory function if you need "virtual behavior" during initialization](#Rc-factory)
* [C.51: Use delegating constructors to represent common actions for all constructors of a class](#Rc-delegating)
* [C.52: Use inheriting constructors to import constructors into a derived class that does not need further explicit initialization](#Rc-inheriting)
* [C.60: Make copy assignment non-`virtual`, take the parameter by `const&`, and return by non-`const&`](#Rc-copy-assignment)
* [C.61: A copy operation should copy](#Rc-copy-semantic)
* [C.62: Make copy assignment safe for self-assignment](#Rc-move-self)
* [C.63: Make move assignment non-`virtual`, take the parameter by `&&`, and return by non-`const&`](#Rc-move-assignment)
* [C.64: A move operation should move and leave its source in a valid state](#Rc-move-semantic)
* [C.65: Make move assignment safe for self-assignment](#Rc-copy-self)
* [C.66: Make move operations `noexcept`](#Rc-move-noexcept)
* [C.67: A base class should suppress copying, and provide a virtual `clone` instead if "copying" is desired](#Rc-copy-virtual)
* [C.80: Use `=default` if you have to be explicit about using the default semantics](#Rc-eqdefault)
* [C.81: Use `=delete` when you want to disable default behavior (without wanting an alternative)](#Rc-delete)
* [C.82: Don't call virtual functions in constructors and destructors](#Rc-ctor-virtual)
* [C.83: For value-like types, consider providing a `noexcept` swap function](#Rc-swap)
* [C.84: A `swap` may not fail](#Rc-swap-fail)
* [C.85: Make `swap` `noexcept`](#Rc-swap-noexcept)
* [C.86: Make `==` symmetric with respect of operand types and `noexcept`](#Rc-eq)
* [C.87: Beware of `==` on base classes](#Rc-eq-base)
* [C.89: Make a `hash` `noexcept`](#Rc-hash)
* [C.100: Follow the STL when defining a container](#Rcon-stl)
* [C.101: Give a container value semantics](#Rcon-val)
* [C.102: Give a container move operations](#Rcon-move)
* [C.103: Give a container an initializer list constructor](#Rcon-init)
* [C.104: Give a container a default constructor that sets it to empty](#Rcon-empty)
* [C.105: Give a constructor and `Extent` constructor](#Rcon-val)
* [C.109: If a resource handle has pointer semantics, provide `*` and `->`](#rcon-ptr)
* [C.120: Use class hierarchies to represent concepts with inherent hierarchical structure (only)](#Rh-domain)
* [C.121: If a base class is used as an interface, make it a pure abstract class](#Rh-abstract)
* [C.122: Use abstract classes as interfaces when complete separation of interface and implementation is needed](#Rh-separation)
* [C.126: An abstract class typically doesn't need a constructor](#Rh-abstract-ctor)
* [C.127: A class with a virtual function should have a virtual or protected destructor](#Rh-dtor)
* [C.128: Virtual functions should specify exactly one of `virtual`, `override`, or `final`](#Rh-override)
* [C.129: When designing a class hierarchy, distinguish between implementation inheritance and interface inheritance](#Rh-kind)
* [C.130: Redefine or prohibit copying for a base class; prefer a virtual `clone` function instead](#Rh-copy)
* [C.131: Avoid trivial getters and setters](#Rh-get)
* [C.132: Don't make a function `virtual` without reason](#Rh-virtual)
* [C.133: Avoid `protected` data](#Rh-protected)
* [C.134: Ensure all non-`const` data members have the same access level](#Rh-public)
* [C.135: Use multiple inheritance to represent multiple distinct interfaces](#Rh-mi-interface)
* [C.136: Use multiple inheritance to represent the union of implementation attributes](#Rh-mi-implementation)
* [C.137: Use `virtual` bases to avoid overly general base classes](#Rh-vbase)
* [C.138: Create an overload set for a derived class and its bases with `using`](#Rh-using)
* [C.139: Use `final` sparingly](#Rh-final)
* [C.140: Do not provide different default arguments for a virtual function and an overrider](#Rh-virtual-default-arg)
* [C.145: Access polymorphic objects through pointers and references](#Rh-poly)
* [C.146: Use `dynamic_cast` where class hierarchy navigation is unavoidable](#Rh-dynamic_cast)
* [C.147: Use `dynamic_cast` to a reference type when failure to find the required class is considered an error](#Rh-ptr-cast)
* [C.148: Use `dynamic_cast` to a pointer type when failure to find the required class is considered a valid alternative](#Rh-ref-cast)
* [C.149: Use `unique_ptr` or `shared_ptr` to avoid forgetting to `delete` objects created using `new`](#Rh-smart)
* [C.150: Use `make_unique()` to construct objects owned by `unique_ptr`s](#Rh-make_unique)
* [C.151: Use `make_shared()` to construct objects owned by `shared_ptr`s](#Rh-make_shared)
* [C.152: Never assign a pointer to an array of derived class objects to a pointer to its base](#Rh-array)
* [C.160: Define operators primarily to mimic conventional usage](#Ro-conventional)
* [C.161: Use nonmember functions for symmetric operators](#Ro-symmetric)
* [C.162: Overload operations that are roughly equivalent](#Ro-equivalent)
* [C.163: Overload only for operations that are roughly equivalent](#Ro-equivalent-2)
* [C.164: Avoid conversion operators](#Ro-conversion)
* [C.165: Use `using` for customization points](#Ro-custom)
* [C.166: Overload unary `&` only as part of a system of smart pointers and references](#Ro-address-of)
* [C.167: Use an operator for an operation with its conventional meaning](#Ro-overload)
* [C.168: Define overloaded operators in the namespace of their operands](#Ro-namespace)
* [C.170: If you feel like overloading a lambda, use a generic lambda](#Ro-lambda)
* [C.180: Use `union`s to save Memory](#Ru-union)
* [C.181: Avoid "naked" `union`s](#Ru-naked)
* [C.182: Use anonymous `union`s to implement tagged unions](#Ru-anonymous)
* [C.183: Don't use a `union` for type punning](#Ru-pun)


# Con
* [Con.1: By default, make objects immutable](#Rconst-immutable)
* [Con.2: By default, make member functions `const`](#Rconst-fct)
* [Con.3: By default, pass pointers and references to `const`s](#Rconst-ref)
* [Con.4: Use `const` to define objects with values that do not change after construction](#Rconst-const)
* [Con.5: Use `constexpr` for values that can be computed at compile time](#Rconst-constexpr)


# CP
* [CP.1: Assume that your code will run as part of a multi-threaded program](#Rconc-multi)
* [CP.2: Avoid data races](#Rconc-races)
* [CP.3: Minimize explicit sharing of writable data](#Rconc-data)
* [CP.4: Think in terms of tasks, rather than threads](#Rconc-task)
* [CP.8: Don't try to use `volatile` for synchronization](#Rconc-volatile)
* [CP.con: Concurrency](#SScp-con)
* [CP.par: Parallelism](#SScp-par)
* [CP.mess: Message passing](#SScp-mess)
* [CP.vec: Vectorization](#SScp-vec)
* [CP.free: Lock-free programming](#SScp-free)
* [CP.etc: Etc. concurrency rules](#SScp-etc)
* [CP.20: Use RAII, never plain `lock()`/`unlock()`](#Rconc-raii)
* [CP.21: Use `std::lock()` to acquire multiple `mutex`es](#Rconc-lock)
* [CP.22: Never call unknown code while holding a lock (e.g., a callback)](#Rconc-unknown)
* [CP.23: Think of a joining `thread` as a scoped container](#Rconc-join)
* [CP.24: Think of a detached `thread` as a global container](#Rconc-detach)
* [CP.25: Prefer `gsl::raii_thread` over `std::thread` unless you plan to `detach()`](#Rconc-raii_thread)
* [CP.26: Prefer `gsl::detached_thread` over `std::thread` if you plan to `detach()`](#Rconc-detached_thread)
* [CP.27: Use plain `std::thread` for `thread`s that detach based on a run-time condition (only)](#Rconc-thread)
* [CP.28: Remember to join scoped `thread`s that are not `detach()`ed](#Rconc-join-undetached)
* [CP.30: Do not pass pointers to local variables to non-`raii_thread`s](#Rconc-pass)
* [CP.31: Pass small amounts of data between threads by value, rather than by reference or pointer](#Rconc-data-by-value)
* [CP.32: To share ownership between unrelated `thread`s use `shared_ptr`](#Rconc-shared)
* [CP.40: Minimize context switching](#Rconc-switch)
* [CP.41: Minimize thread creation and destruction](#Rconc-create)
* [CP.42: Don't `wait` without a condition](#Rconc-wait)
* [CP.43: Minimize time spent in a critical section](#Rconc-time)
* [CP.44: Remember to name your `lock_guard`s and `unique_lock`s](#Rconc-name)
* [CP.50: Define a `mutex` together with the data it protects](#Rconc-mutex)
* [CP.60: Use a `future` to return a value from a concurrent task](#Rconc-future)
* [CP.61: Use a `async()` to spawn a concurrent task](#Rconc-async)
* [CP.100: Don't use lock-free programming unless you absolutely have to](#Rconc-lockfree)
* [CP.101: Distrust your hardware/compiler combination](#Rconc-distrust)
* [CP.102: Carefully study the literature](#Rconc-literature)
* [CP.110: Do not write your own double-checked locking for initialization](#Rconc-double)
* [CP.111: Use a conventional pattern if you really need double-checked locking](#Rconc-double-pattern)
* [CP.200: Use `volatile` only to talk to non-C++ memory](#Rconc-volatile2)
* [CP.201: ??? Signals](#Rconc-signal)


# CPL
* [CPL.1: Prefer C++ to C](#Rcpl-C)
* [CPL.2: If you must use C, use the common subset of C and C++, and compile the C code as C++](#Rcpl-subset)
* [CPL.3: If you must use C for interfaces, use C++ in the code using such interfaces](#Rcpl-interface)


# E
* [E.1: Develop an error-handling strategy early in a design](#Re-design)
* [E.2: Throw an exception to signal that a function can't perform its assigned task](#Re-throw)
* [E.3: Use exceptions for error handling only](#Re-errors)
* [E.4: Design your error-handling strategy around invariants](#Re-design-invariants)
* [E.5: Let a constructor establish an invariant, and throw if it cannot](#Re-invariant)
* [E.6: Use RAII to prevent leaks](#Re-raii)
* [E.7: State your preconditions](#Re-precondition)
* [E.8: State your postconditions](#Re-postcondition)
* [E.12: Use `noexcept` when exiting a function because of a `throw` is impossible or unacceptable](#Re-noexcept)
* [E.13: Never throw while being the direct owner of an object](#Re-never-throw)
* [E.14: Use purpose-designed user-defined types as exceptions (not built-in types)](#Re-exception-types)
* [E.15: Catch exceptions from a hierarchy by reference](#Re-exception-ref)
* [E.16: Destructors, deallocation, and `swap` must never fail](#Re-never-fail)
* [E.17: Don't try to catch every exception in every function](#Re-not-always)
* [E.18: Minimize the use of explicit `try`/`catch`](#Re-catch)
* [E.19: Use a `final_action` object to express cleanup if no suitable resource handle is available](#Re-finally)
* [E.25: If you can't throw exceptions, simulate RAII for resource management](#Re-no-throw-raii)
* [E.26: If you can't throw exceptions, consider failing fast](#Re-no-throw-crash)
* [E.27: If you can't throw exceptions, use error codes systematically](#Re-no-throw-codes)
* [E.28: Avoid error handling based on global state (e.g. `errno`)](#Re-no-throw)


# Enum
* [Enum.1: Prefer enumerations over macros](#Renum-macro)
* [Enum.2: Use enumerations to represent sets of related named constants](#Renum-set)
* [Enum.3: Prefer `enum class`es over "plain" `enum`s](#Renum-class)
* [Enum.4: Define operations on enumerations for safe and simple use](#Renum-oper)
* [Enum.5: Don't use `ALL_CAPS` for enumerators](#Renum-caps)
* [Enum.6: Avoid unnamed enumerations](#Renum-unnamed)
* [Enum.7: Specify the underlying type of an enumeration only when necessary](#Renum-underlying)
* [Enum.8: Specify enumerator values only when necessary](#Renum-value)


# ES
* [ES.28: Use lambdas for complex initialization, especially of `const` variables](#Res-lambda-init)
* [ES.1: Prefer the standard library to other libraries and to "handcrafted code"](#Res-lib)
* [ES.2: Prefer suitable abstractions to direct use of language features](#Res-abstr)
* [ES.5: Keep scopes small](#Res-scope)
* [ES.6: Declare names in for-statement initializers and conditions to limit scope](#Res-cond)
* [ES.7: Keep common and local names short, and keep uncommon and nonlocal names longer](#Res-name-length)
* [ES.8: Avoid similar-looking names](#Res-name-similar)
* [ES.9: Avoid `ALL_CAPS` names](#Res-not-CAPS)
* [ES.10: Declare one name (only) per declaration](#Res-name-one)
* [ES.11: Use `auto` to avoid redundant repetition of type names](#Res-auto)
* [ES.12: Do not reuse names in nested scopes](#Res-reuse)
* [ES.20: Always initialize an object](#Res-always)
* [ES.21: Don't introduce a variable (or constant) before you need to use it](#Res-introduce)
* [ES.22: Don't declare a variable until you have a value to initialize it with](#Res-init)
* [ES.23: Prefer the `{}`-initializer syntax](#Res-list)
* [ES.24: Use a `unique_ptr<T>` to hold pointers in code that may throw](#Res-unique)
* [ES.25: Declare an object `const` or `constexpr` unless you want to modify its value later on](#Res-const)
* [ES.26: Don't use a variable for two unrelated purposes](#Res-recycle)
* [ES.27: Use `std::array` or `stack_array` for arrays on the stack](#Res-stack)
* [ES.28: Use lambdas for complex initialization, especially of `const` variables](#Res-lambda-init)
* [ES.30: Don't use macros for program text manipulation](#Res-macros)
* [ES.31: Don't use macros for constants or "functions"](#Res-macros2)
* [ES.32: Use `ALL_CAPS` for all macro names](#Res-ALL_CAPS)
* [ES.33: If you must use macros, give them unique names](#Res-MACROS)
* [ES.34: Don't define a (C-style) variadic function](#Res-ellipses)
* [ES.40: Avoid complicated expressions](#Res-complicated)
* [ES.41: If in doubt about operator precedence, parenthesize](#Res-parens)
* [ES.42: Keep use of pointers simple and straightforward](#Res-ptr)
* [ES.43: Avoid expressions with undefined order of evaluation](#Res-order)
* [ES.44: Don't depend on order of evaluation of function arguments](#Res-order-fct)
* [ES.45: Avoid narrowing conversions](#Res-narrowing)
* [ES.46: Avoid "magic constants"; use symbolic constants](#Res-magic)
* [ES.47: Use `nullptr` rather than `0` or `NULL`](#Res-nullptr)
* [ES.48: Avoid casts](#Res-casts)
* [ES.49: If you must use a cast, use a named cast](#Res-casts-named)
* [ES.50: Don't cast away `const`](#Res-casts-const)
* [ES.55: Avoid the need for range checking](#Res-range-checking)
* [ES.56: Avoid `std::move()` in application code](#Res-move)
* [ES.60: Avoid `new` and `delete` outside resource management functions](#Res-new)
* [ES.61: Delete arrays using `delete[]` and non-arrays using `delete`](#Res-del)
* [ES.62: Don't compare pointers into different arrays](#Res-arr2)
* [ES.63: Don't slice](#Res-slice)
* [ES.70: Prefer a `switch`-statement to an `if`-statement when there is a choice](#Res-switch-if)
* [ES.71: Prefer a range-`for`-statement to a `for`-statement when there is a choice](#Res-for-range)
* [ES.72: Prefer a `for`-statement to a `while`-statement when there is an obvious loop variable](#Res-for-while)
* [ES.73: Prefer a `while`-statement to a `for`-statement when there is no obvious loop variable](#Res-while-for)
* [ES.74: Prefer to declare a loop variable in the initializer part of a `for`-statement](#Res-for-init)
* [ES.75: Avoid `do`-statements](#Res-do)
* [ES.76: Avoid `goto`](#Res-goto)
* [ES.77: ??? `continue`](#Res-continue)
* [ES.78: Always end a non-empty `case` with a `break`](#Res-break)
* [ES.79: ??? `default`](#Res-default)
* [ES.85: Make empty statements visible](#Res-empty)
* [ES.86: Avoid modifying loop control variables inside the body of raw for-loops](#Res-loop-counter)
* [ES.100: Don't mix signed and unsigned arithmetic](#Res-mix)
* [ES.101: Use unsigned types for bit manipulation](#Res-unsigned)
* [ES.102: Use signed types for arithmetic](#Res-signed)
* [ES.103: Don't overflow](#Res-overflow)
* [ES.104: Don't underflow](#Res-underflow)
* [ES.105: Don't divide by zero](#Res-zero)
* [ES.21: Don't introduce a variable (or constant) before you need to use it](#Res-introduce)


# F
* [F.1: "Package" meaningful operations as carefully named functions](#Rf-package)
* [F.2: A function should perform a single logical operation](#Rf-logical)
* [F.3: Keep functions short and simple](#Rf-single)
* [F.4: If a function may have to be evaluated at compile time, declare it `constexpr`](#Rf-constexpr)
* [F.5: If a function is very small and time-critical, declare it inline](#Rf-inline)
* [F.6: If your function may not throw, declare it `noexcept`](#Rf-noexcept)
* [F.7: For general use, take `T*` or `T&` arguments rather than smart pointers](#Rf-smart)
* [F.8: Prefer pure functions](#Rf-pure)
* [F.15: Prefer simple and conventional ways of passing information](#Rf-conventional)
* [F.16: For "in" parameters, pass cheaply-copied types by value and others by reference to `const`](#Rf-in)
* [F.17: For "in-out" parameters, pass by reference to non-`const`](#Rf-inout)
* [F.18: For "consume" parameters, pass by `X&&` and `std::move` the parameter](#Rf-consume)
* [F.19: For "forward" parameters, pass by `TP&&` and only `std::forward` the parameter](#Rf-forward)
* [F.20: For "out" output values, prefer return values to output parameters](#Rf-out)
* [F.21: To return multiple "out" values, prefer returning a tuple or struct](#Rf-out-multi)
* [F.60: Prefer `T*` over `T&` when "no argument" is a valid option](#Rf-ptr-ref)
* [F.22: Use `T*` or `owner<T*>` or a smart pointer to designate a single object](#Rf-ptr)
* [F.23: Use a `not_null<T>` to indicate "null" is not a valid value](#Rf-nullptr)
* [F.24: Use a `span<T>` or a `span_p<T>` to designate a half-open sequence](#Rf-range)
* [F.25: Use a `zstring` or a `not_null<zstring>` to designate a C-style string](#Rf-string)
* [F.26: Use a `unique_ptr<T>` to transfer ownership where a pointer is needed](#Rf-unique_ptr)
* [F.27: Use a `shared_ptr<T>` to share ownership](#Rf-shared_ptr)
* [F.42: Return a `T*` to indicate a position (only)](#Rf-return-ptr)
* [F.43: Never (directly or indirectly) return a pointer or a reference to a local object](#Rf-dangle)
* [F.44: Return a `T&` when copy is undesirable and "returning no object" isn't an option](#Rf-return-ref)
* [F.45: Don't return a `T&&`](#Rf-return-ref-ref)
* [F.46: `int` is the return type for `main()`](#Rf-main)
* [F.47: Return `T&` from assignment operators.](#Rf-assignment-op)
* [F.50: Use a lambda when a function won't do (to capture local variables, or to write a local function)](#Rf-capture-vs-overload)
* [F.51: Where there is a choice, prefer default arguments over overloading](#Rf-default-args)
* [F.52: Prefer capturing by reference in lambdas that will be used locally, including passed to algorithms](#Rf-reference-capture)
* [F.53: Avoid capturing by reference in lambdas that will be used nonlocally, including returned, stored on the heap, or passed to another thread](#Rf-value-capture)
* [F.54: If you capture `this`, capture all variables explicitly (no default capture)](#Rf-this-capture)
* [F.50: Use a lambda when a function won't do (to capture local variables, or to write a local function)](#Rf-capture-vs-overload)
* [F.52: Prefer capturing by reference in lambdas that will be used locally, including passed to algorithms](#Rf-reference-capture)
* [F.53: Avoid capturing by reference in lambdas that will be used nonlocally, including returned, stored on the heap, or passed to another thread](#Rf-value-capture)


# GSL
* [GSL.view: Views](#SS-views)
* [GSL.assert: Assertions](#SS-assertions)
* [GSL.util: Utilities](#SS-utilities)
* [GSL.concept: Concepts](#SS-gsl-concepts)


# I
* [I.1: Make interfaces explicit](#Ri-explicit)
* [I.2: Avoid global variables](#Ri-global)
* [I.3: Avoid singletons](#Ri-singleton)
* [I.4: Make interfaces precisely and strongly typed](#Ri-typed)
* [I.5: State preconditions (if any)](#Ri-pre)
* [I.6: Prefer `Expects()` for expressing preconditions](#Ri-expects)
* [I.7: State postconditions](#Ri-post)
* [I.8: Prefer `Ensures()` for expressing postconditions](#Ri-ensures)
* [I.9: If an interface is a template, document its parameters using concepts](#Ri-concepts)
* [I.10: Use exceptions to signal a failure to perform a required task](#Ri-except)
* [I.11: Never transfer ownership by a raw pointer (`T*`)](#Ri-raw)
* [I.12: Declare a pointer that must not be null as `not_null`](#Ri-nullptr)
* [I.13: Do not pass an array as a single pointer](#Ri-array)
* [I.22: Avoid complex initialization of global objects](#Ri-global-init)
* [I.23: Keep the number of function arguments low](#Ri-nargs)
* [I.24: Avoid adjacent unrelated parameters of the same type](#Ri-unrelated)
* [I.25: Prefer abstract classes as interfaces to class hierarchies](#Ri-abstract)
* [I.26: If you want a cross-compiler ABI, use a C-style subset](#Ri-abi)


# In
* [In.target: Target readership](#SS-readers)
* [In.aims: Aims](#SS-aims)
* [In.not: Non-aims](#SS-non)
* [In.force: Enforcement](#SS-force)
* [In.struct: The structure of this document](#SS-struct)
* [In.sec: Major sections](#SS-sec)


# NL
* [NL.1: Don't say in comments what can be clearly stated in code](#Rl-comments)
* [NL.2: State intent in comments](#Rl-comments-intent)
* [NL.3: Keep comments crisp](#Rl-comments-crisp)
* [NL.4: Maintain a consistent indentation style](#Rl-indent)
* [NL.5: Don't encode type information in names](#Rl-name-type)
* [NL.7: Make the length of a name roughly proportional to the length of its scope](#Rl-name-length)
* [NL.8: Use a consistent naming style](#Rl-name)
* [NL.9: Use `ALL_CAPS` for macro names only](#Rl-all-caps)
* [NL.10: Avoid CamelCase](#Rl-camel)
* [NL.15: Use spaces sparingly](#Rl-space)
* [NL.16: Use a conventional class member declaration order](#Rl-order)
* [NL.17: Use K&R-derived layout](#Rl-knr)
* [NL.18: Use C++-style declarator layout](#Rl-ptr)
* [NL.19: Avoid names that are easily misread](#Rl-misread)
* [NL.20: Don't place two statements on the same line](#Rl-stmt)
* [NL.21: Declare one name (only) per declaration](#Rl-dcl)
* [NL.25: Don't use `void` as an argument type](#Rl-void)
* [NL.26: Use conventional `const` notation](#Rl-const)


# NR
* [NR.1: Don't: All declarations should be at the top of a function](#Rnr-top)
* [NR.2: Don't: Have only a single `return`-statement in a function](#Rnr-single-return)
* [NR.3: Don't: Don't use exceptions](#Rnr-no-exceptions)
* [NR.4: Don't: Place each class declaration in its own source file](#Rnr-lots-of-files)
* [NR.5: Don't: Don't do substantive work in a constructor; instead use two-phase initialization](#Rnr-two-phase-init)
* [NR.6: Don't: Place all cleanup actions at the end of a function and `goto exit`](#Rnr-goto-exit)
* [NR.7: Don't: Make all data members `protected`](#Rnr-protected-data)


# P
* [P.1: Express ideas directly in code](#Rp-direct)
* [P.2: Write in ISO Standard C++](#Rp-Cplusplus)
* [P.3: Express intent](#Rp-what)
* [P.4: Ideally, a program should be statically type safe](#Rp-typesafe)
* [P.5: Prefer compile-time checking to run-time checking](#Rp-compile-time)
* [P.6: What cannot be checked at compile time should be checkable at run time](#Rp-run-time)
* [P.7: Catch run-time errors early](#Rp-early)
* [P.8: Don't leak any resources](#Rp-leak)
* [P.9: Don't waste time or space](#Rp-waste)
* [P.10: Prefer immutable data to mutable data](#Rp-mutable)
* [P.11: Encapsulate messy constructs, rather than spreading through the code](#Rp-library)


# Per
* [Per.1: Don't optimize without reason](#Rper-reason)
* [Per.2: Don't optimize prematurely](#Rper-Knuth)
* [Per.3: Don't optimize something that's not performance critical](#Rper-critical)
* [Per.4: Don't assume that complicated code is necessarily faster than simple code](#Rper-simple)
* [Per.5: Don't assume that low-level code is necessarily faster than high-level code](#Rper-low)
* [Per.6: Don't make claims about performance without measurements](#Rper-measure)
* [Per.7: Design to enable optimization](#Rper-efficiency)
* [Per.10: Rely on the static type system](#Rper-type)
* [Per.11: Move computation from run time to compile time](#Rper-Comp)
* [Per.12: Eliminate redundant aliases](#Rper-alias)
* [Per.13: Eliminate redundant indirections](#Rper-indirect)
* [Per.14: Minimize the number of allocations and deallocations](#Rper-alloc)
* [Per.15: Do not allocate on a critical branch](#Rper-alloc0)
* [Per.16: Use compact data structures](#Rper-compact)
* [Per.17: Declare the most used member of a time-critical struct first](#Rper-struct)
* [Per.18: Space is time](#Rper-space)
* [Per.19: Access memory predictably](#Rper-access)
* [Per.30: Avoid context switches on the critical path](#Rper-context)


# Pro
* [Pro.type: Type safety](#SS-type)
* [Pro.bounds: Bounds safety](#SS-bounds)
* [Pro.lifetime: Lifetime safety](#SS-lifetime)


# R
  * [R.1: Manage resources automatically using resource handles and RAII (Resource Acquisition Is Initialization)](#Rr-raii)
  * [R.2: In interfaces, use raw pointers to denote individual objects (only)](#Rr-use-ptr)
  * [R.3: A raw pointer (a `T*`) is non-owning](#Rr-ptr)
  * [R.4: A raw reference (a `T&`) is non-owning](#Rr-ref)
  * [R.5: Prefer scoped objects](#Rr-scoped)
  * [R.6: Avoid non-`const` global variables](#Rr-global)
  * [R.10: Avoid `malloc()` and `free()`](#Rr-mallocfree)
  * [R.11: Avoid calling `new` and `delete` explicitly](#Rr-newdelete)
  * [R.12: Immediately give the result of an explicit resource allocation to a manager object](#Rr-immediate-alloc)
  * [R.13: Perform at most one explicit resource allocation in a single expression statement](#Rr-single-alloc)
  * [R.14: ??? array vs. pointer parameter](#Rr-ap)
  * [R.15: Always overload matched allocation/deallocation pairs](#Rr-pair)
  * [R.20: Use `unique_ptr` or `shared_ptr` to represent ownership](#Rr-owner)
  * [R.21: Prefer `unique_ptr` over `shared_ptr` unless you need to share ownership](#Rr-unique)
  * [R.22: Use `make_shared()` to make `shared_ptr`s](#Rr-make_shared)
  * [R.23: Use `make_unique()` to make `unique_ptr`s](#Rr-make_unique)
  * [R.24: Use `std::weak_ptr` to break cycles of `shared_ptr`s](#Rr-weak_ptr)
  * [R.30: Take smart pointers as parameters only to explicitly express lifetime semantics](#Rr-smartptrparam)
  * [R.31: If you have non-`std` smart pointers, follow the basic pattern from `std`](#Rr-smart)
  * [R.32: Take a `unique_ptr<widget>` parameter to express that a function assumes ownership of a `widget`](#Rr-uniqueptrparam)
  * [R.33: Take a `unique_ptr<widget>&` parameter to express that a function reseats the `widget`](#Rr-reseat)
  * [R.34: Take a `shared_ptr<widget>` parameter to express that a function is part owner](#Rr-sharedptrparam-owner)
  * [R.35: Take a `shared_ptr<widget>&` parameter to express that a function might reseat the shared pointer](#Rr-sharedptrparam)
  * [R.36: Take a `const shared_ptr<widget>&` parameter to express that it might retain a reference count to the object ???](#Rr-sharedptrparam-const)
  * [R.37: Do not pass a pointer or reference obtained from an aliased smart pointer](#Rr-smartptrget)


# RF
* [RF.rules: Coding rules](#SS-rules)
* [RF.books: Books with coding guidelines](#SS-books)
* [RF.C++: C++ Programming (C++11/C++14)](#SS-Cplusplus)
* [RF.web: Websites](#SS-web)
* [RF.man: Manuals](#SS-man)


# RS
* [RS.video: Videos about "modern C++"](#SS-vid)


# SF
* [SF.1: Use a `.cpp` suffix for code files and `.h` for interface files if your project doesn't already follow another convention](#Rs-file-suffix)
* [SF.2: A `.h` file may not contain object definitions or non-inline function definitions](#Rs-inline)
* [SF.3: Use `.h` files for all declarations used in multiple source files](#Rs-declaration-header)
* [SF.4: Include `.h` files before other declarations in a file](#Rs-include-order)
* [SF.5: A `.cpp` file must include the `.h` file(s) that defines its interface](#Rs-consistency)
* [SF.6: Use `using`-directives for transition, for foundation libraries (such as `std`), or within a local scope](#Rs-using)
* [SF.7: Don't put a `using`-directive in a header file](#Rs-using-directive)
* [SF.8: Use `#include` guards for all `.h` files](#Rs-guards)
* [SF.9: Avoid cyclic dependencies among source files](#Rs-cycles)
* [SF.20: Use `namespace`s to express logical structure](#Rs-namespace)
* [SF.21: Don't use an unnamed (anonymous) namespace in a header](#Rs-unnamed)
* [SF.22: Use an unnamed (anonymous) namespace for all internal/nonexported entities](#Rs-unnamed2)


# SL
* [SL.con: Containers](#SS-con)
* [SL.str: String](#SS-string)
* [SL.io: Iostream](#SS-io)
* [SL.regex: Regex](#SS-regex)
* [SL.chrono: Time](#SS-chrono)
* [SL.C: The C standard library](#SS-clib)
* [SL.1: Use libraries wherever possible](#Rsl-lib)
* [SL.2: Prefer the standard library to other libraries](#Rsl-sl)
* [SL.con.1: Prefer using STL `array` or `vector` instead of a C array](#Rsl-arrays)
* [SL.con.2: Prefer using STL `vector` by default unless you have a reason to use a different container](#Rsl-vector)
* [SL.io.1: Use character-level input only when you have to](#Rio-low)
* [SL.io.2: When reading, always consider ill-formed input](#Rio-validate)
* [SL.io.50: Avoid `endl`](#Rio-endl)


# T
* [T.1: Use templates to raise the level of abstraction of code](#Rt-raise)
* [T.2: Use templates to express algorithms that apply to many argument types](#Rt-algo)
* [T.3: Use templates to express containers and ranges](#Rt-cont)
* [T.4: Use templates to express syntax tree manipulation](#Rt-expr)
* [T.5: Combine generic and OO techniques to amplify their strengths, not their costs](#Rt-generic-oo)
* [T.10: Specify concepts for all template arguments](#Rt-concepts)
* [T.11: Whenever possible use standard concepts](#Rt-std-concepts)
* [T.12: Prefer concept names over `auto` for local variables](#Rt-auto)
* [T.13: Prefer the shorthand notation for simple, single-type argument concepts](#Rt-shorthand)
* [T.20: Avoid "concepts" without meaningful semantics](#Rt-low)
* [T.21: Require a complete set of operations for a concept](#Rt-complete)
* [T.22: Specify axioms for concepts](#Rt-axiom)
* [T.23: Differentiate a refined concept from its more general case by adding new use patterns](#Rt-refine)
* [T.24: Use tag classes or traits to differentiate concepts that differ only in semantics](#Rt-tag)
* [T.25: Avoid complementary constraints](#Rt-not)
* [T.26: Prefer to define concepts in terms of use-patterns rather than simple syntax](#Rt-use)
* [T.30: Use concept negation (`!C<T>`) sparingly to express a minor difference](#Rt-not)
* [T.31: Use concept disjunction (`C1<T> || C2<T>`) sparingly to express alternatives](#Rt-or)
* [T.40: Use function objects to pass operations to algorithms](#Rt-fo)
* [T.41: Require only essential properties in a template's concepts](#Rt-essential)
* [T.42: Use template aliases to simplify notation and hide implementation details](#Rt-alias)
* [T.43: Prefer `using` over `typedef` for defining aliases](#Rt-using)
* [T.44: Use function templates to deduce class template argument types (where feasible)](#Rt-deduce)
* [T.46: Require template arguments to be at least `Regular` or `SemiRegular`](#Rt-regular)
* [T.47: Avoid highly visible unconstrained templates with common names](#Rt-visible)
* [T.48: If your compiler does not support concepts, fake them with `enable_if`](#Rt-concept-def)
* [T.49: Where possible, avoid type-erasure](#Rt-erasure)
* [T.60: Minimize a template's context dependencies](#Rt-depend)
* [T.61: Do not over-parameterize members (SCARY)](#Rt-scary)
* [T.62: Place non-dependent class template members in a non-templated base class](#Rt-nondependent)
* [T.64: Use specialization to provide alternative implementations of class templates](#Rt-specialization)
* [T.65: Use tag dispatch to provide alternative implementations of functions](#Rt-tag-dispatch)
* [T.67: Use specialization to provide alternative implementations for irregular types](#Rt-specialization2)
* [T.68: Use `{}` rather than `()` within templates to avoid ambiguities](#Rt-cast)
* [T.69: Inside a template, don't make an unqualified nonmember function call unless you intend it to be a customization point](#Rt-customization)
* [T.80: Do not naively templatize a class hierarchy](#Rt-hier)
* [T.81: Do not mix hierarchies and arrays](#Rt-array) // ??? somewhere in "hierarchies"
* [T.82: Linearize a hierarchy when virtual functions are undesirable](#Rt-linear)
* [T.83: Do not declare a member function template virtual](#Rt-virtual)
* [T.84: Use a non-template core implementation to provide an ABI-stable interface](#Rt-abi)
* [T.??: ????](#Rt-???)
* [T.100: Use variadic templates when you need a function that takes a variable number of arguments of a variety of types](#Rt-variadic)
* [T.101: ??? How to pass arguments to a variadic template ???](#Rt-variadic-pass)
* [T.102: ??? How to process arguments to a variadic template ???](#Rt-variadic-process)
* [T.103: Don't use variadic templates for homogeneous argument lists](#Rt-variadic-not)
* [T.??: ????](#Rt-???)
* [T.120: Use template metaprogramming only when you really need to](#Rt-metameta)
* [T.121: Use template metaprogramming primarily to emulate concepts](#Rt-emulate)
* [T.122: Use templates (usually template aliases) to compute types at compile time](#Rt-tmp)
* [T.123: Use `constexpr` functions to compute values at compile time](#Rt-fct)
* [T.124: Prefer to use standard-library TMP facilities](#Rt-std-tmp)
* [T.125: If you need to go beyond the standard-library TMP facilities, use an existing library](#Rt-lib)
* [T.??: ????](#Rt-???)
* [T.140: Name all operations with potential for reuse](#Rt-name)
* [T.141: Use an unnamed lambda if you need a simple function object in one place only](#Rt-lambda)
* [T.142: Use template variables to simplify notation](#Rt-var)
* [T.143: Don't write unintentionally nongeneric code](#Rt-nongeneric)
* [T.144: Don't specialize function templates](#Rt-specialize-function)
* [T.150: Check that a class matches a concept using `static_assert`](#Rt-check-class)
* [T.??: ????](#Rt-???)
* [T.10: Specify concepts for all template arguments](#Rt-concepts)
* [T.11: Whenever possible use standard concepts](#Rt-std-concepts)
* [T.12: Prefer concept names over `auto`](#Rt-auto)
* [T.13: Prefer the shorthand notation for simple, single-type argument concepts](#Rt-shorthand)
* [T.20: Avoid "concepts" without meaningful semantics](#Rt-low)
* [T.21: Require a complete set of operations for a concept](#Rt-complete)
* [T.22: Specify axioms for concepts](#Rt-axiom)
* [T.23: Differentiate a refined concept from its more general case by adding new use patterns](#Rt-refine)
* [T.24: Use tag classes or traits to differentiate concepts that differ only in semantics](#Rt-tag)
* [T.25: Avoid complimentary constraints](#Rt-not)
* [T.26: Prefer to define concepts in terms of use-patterns rather than simple syntax](#Rt-use)


# Type
* [Type.1: Don't use `reinterpret_cast`](#Pro-type-reinterpretcast)
* [Type.2: Don't use `static_cast` downcasts. Use `dynamic_cast` instead](#Pro-type-downcast)
* [Type.3: Don't use `const_cast` to cast away `const` (i.e., at all)](#Pro-type-constcast)
* [Type.4: Don't use C-style `(T)expression` casts that would perform a `static_cast` downcast, `const_cast`, or `reinterpret_cast`](#Pro-type-cstylecast)
* [Type.5: Don't use a variable before it has been initialized](#Pro-type-init)
* [Type.6: Always initialize a member variable](#Pro-type-memberinit)

### C
* [C.concrete: Concrete types](#SS-concrete)
* [C.hier: Class hierarchies](#SS-hier)
* [C.over: Overloading and overloaded operators](#SS-overload)
* [C.con: Containers and other resource handles](#SS-containers)
* [C.1: Organize related data into structures (`struct`s or `class`es)](#Rc-org)
* [C.2: Use `class` if the class has an invariant; use `struct` if the data members can vary independently](#Rc-struct)
* [C.3: Represent the distinction between an interface and an implementation using a class](#Rc-interface)
* [C.4: Make a function a member only if it needs direct access to the representation of a class](#Rc-member)
* [C.5: Place helper functions in the same namespace as the class they support](#Rc-helper)
* [C.7: Don't define a class or enum and declare a variable of its type in the same statement](#Rc-standalone)
* [C.8: Use `class` rather than `struct` if any member is non-public](#Rc-class)
* [C.9: Minimize exposure of members](#Rc-private)
* [C.concrete: Concrete types](#SS-concrete)
* [C.ctor: Constructors, assignments, and destructors](#S-ctor)
* [C.con: Containers and other resource handles](#SS-containers)
* [C.lambdas: Function objects and lambdas](#SS-lambdas)
* [C.hier: Class hierarchies (OOP)](#SS-hier)
* [C.over: Overloading and overloaded operators](#SS-overload)
* [C.union: Unions](#SS-union)
* [C.10: Prefer a concrete type over more complicated classes](#Rc-concrete)
* [C.11: Make concrete types regular](#Rc-regular)
* [C.20: If you can avoid defining any default operations, do](#Rc-zero)
* [C.21: If you define or `=delete` any default operation, define or `=delete` them all](#Rc-five)
* [C.22: Make default operations consistent](#Rc-matched)
* [C.30: Define a destructor if a class needs an explicit action at object destruction](#Rc-dtor)
* [C.31: All resources acquired by a class must be released by the class's destructor](#Rc-dtor-release)
* [C.32: If a class has a raw pointer (`T*`) or reference (`T&`), consider whether it might be owning](#Rc-dtor-ptr)
* [C.33: If a class has an owning pointer member, define or `=delete` a destructor](#Rc-dtor-ptr2)
* [C.34: If a class has an owning reference member, define or `=delete` a destructor](#Rc-dtor-ref)
* [C.35: A base class with a virtual function needs a virtual destructor](#Rc-dtor-virtual)
* [C.36: A destructor may not fail](#Rc-dtor-fail)
* [C.37: Make destructors `noexcept`](#Rc-dtor-noexcept)
* [C.40: Define a constructor if a class has an invariant](#Rc-ctor)
* [C.41: A constructor should create a fully initialized object](#Rc-complete)
* [C.42: If a constructor cannot construct a valid object, throw an exception](#Rc-throw)
* [C.43: Ensure that a class has a default constructor](#Rc-default0)
* [C.44: Prefer default constructors to be simple and non-throwing](#Rc-default00)
* [C.45: Don't define a default constructor that only initializes data members; use member initializers instead](#Rc-default)
* [C.46: By default, declare single-argument constructors `explicit`](#Rc-explicit)
* [C.47: Define and initialize member variables in the order of member declaration](#Rc-order)
* [C.48: Prefer in-class initializers to member initializers in constructors for constant initializers](#Rc-in-class-initializer)
* [C.49: Prefer initialization to assignment in constructors](#Rc-initialize)
* [C.50: Use a factory function if you need "virtual behavior" during initialization](#Rc-factory)
* [C.51: Use delegating constructors to represent common actions for all constructors of a class](#Rc-delegating)
* [C.52: Use inheriting constructors to import constructors into a derived class that does not need further explicit initialization](#Rc-inheriting)
* [C.60: Make copy assignment non-`virtual`, take the parameter by `const&`, and return by non-`const&`](#Rc-copy-assignment)
* [C.61: A copy operation should copy](#Rc-copy-semantic)
* [C.62: Make copy assignment safe for self-assignment](#Rc-move-self)
* [C.63: Make move assignment non-`virtual`, take the parameter by `&&`, and return by non-`const&`](#Rc-move-assignment)
* [C.64: A move operation should move and leave its source in a valid state](#Rc-move-semantic)
* [C.65: Make move assignment safe for self-assignment](#Rc-copy-self)
* [C.66: Make move operations `noexcept`](#Rc-move-noexcept)
* [C.67: A base class should suppress copying, and provide a virtual `clone` instead if "copying" is desired](#Rc-copy-virtual)
* [C.80: Use `=default` if you have to be explicit about using the default semantics](#Rc-eqdefault)
* [C.81: Use `=delete` when you want to disable default behavior (without wanting an alternative)](#Rc-delete)
* [C.82: Don't call virtual functions in constructors and destructors](#Rc-ctor-virtual)
* [C.83: For value-like types, consider providing a `noexcept` swap function](#Rc-swap)
* [C.84: A `swap` may not fail](#Rc-swap-fail)
* [C.85: Make `swap` `noexcept`](#Rc-swap-noexcept)
* [C.86: Make `==` symmetric with respect of operand types and `noexcept`](#Rc-eq)
* [C.87: Beware of `==` on base classes](#Rc-eq-base)
* [C.89: Make a `hash` `noexcept`](#Rc-hash)
* [C.100: Follow the STL when defining a container](#Rcon-stl)
* [C.101: Give a container value semantics](#Rcon-val)
* [C.102: Give a container move operations](#Rcon-move)
* [C.103: Give a container an initializer list constructor](#Rcon-init)
* [C.104: Give a container a default constructor that sets it to empty](#Rcon-empty)
* [C.105: Give a constructor and `Extent` constructor](#Rcon-val)
* [C.109: If a resource handle has pointer semantics, provide `*` and `->`](#rcon-ptr)
* [C.120: Use class hierarchies to represent concepts with inherent hierarchical structure (only)](#Rh-domain)
* [C.121: If a base class is used as an interface, make it a pure abstract class](#Rh-abstract)
* [C.122: Use abstract classes as interfaces when complete separation of interface and implementation is needed](#Rh-separation)
* [C.126: An abstract class typically doesn't need a constructor](#Rh-abstract-ctor)
* [C.127: A class with a virtual function should have a virtual or protected destructor](#Rh-dtor)
* [C.128: Virtual functions should specify exactly one of `virtual`, `override`, or `final`](#Rh-override)
* [C.129: When designing a class hierarchy, distinguish between implementation inheritance and interface inheritance](#Rh-kind)
* [C.130: Redefine or prohibit copying for a base class; prefer a virtual `clone` function instead](#Rh-copy)
* [C.131: Avoid trivial getters and setters](#Rh-get)
* [C.132: Don't make a function `virtual` without reason](#Rh-virtual)
* [C.133: Avoid `protected` data](#Rh-protected)
* [C.134: Ensure all non-`const` data members have the same access level](#Rh-public)
* [C.135: Use multiple inheritance to represent multiple distinct interfaces](#Rh-mi-interface)
* [C.136: Use multiple inheritance to represent the union of implementation attributes](#Rh-mi-implementation)
* [C.137: Use `virtual` bases to avoid overly general base classes](#Rh-vbase)
* [C.138: Create an overload set for a derived class and its bases with `using`](#Rh-using)
* [C.139: Use `final` sparingly](#Rh-final)
* [C.140: Do not provide different default arguments for a virtual function and an overrider](#Rh-virtual-default-arg)
* [C.145: Access polymorphic objects through pointers and references](#Rh-poly)
* [C.146: Use `dynamic_cast` where class hierarchy navigation is unavoidable](#Rh-dynamic_cast)
* [C.147: Use `dynamic_cast` to a reference type when failure to find the required class is considered an error](#Rh-ptr-cast)
* [C.148: Use `dynamic_cast` to a pointer type when failure to find the required class is considered a valid alternative](#Rh-ref-cast)
* [C.149: Use `unique_ptr` or `shared_ptr` to avoid forgetting to `delete` objects created using `new`](#Rh-smart)
* [C.150: Use `make_unique()` to construct objects owned by `unique_ptr`s](#Rh-make_unique)
* [C.151: Use `make_shared()` to construct objects owned by `shared_ptr`s](#Rh-make_shared)
* [C.152: Never assign a pointer to an array of derived class objects to a pointer to its base](#Rh-array)
* [C.160: Define operators primarily to mimic conventional usage](#Ro-conventional)
* [C.161: Use nonmember functions for symmetric operators](#Ro-symmetric)
* [C.162: Overload operations that are roughly equivalent](#Ro-equivalent)
* [C.163: Overload only for operations that are roughly equivalent](#Ro-equivalent-2)
* [C.164: Avoid conversion operators](#Ro-conversion)
* [C.165: Use `using` for customization points](#Ro-custom)
* [C.166: Overload unary `&` only as part of a system of smart pointers and references](#Ro-address-of)
* [C.167: Use an operator for an operation with its conventional meaning](#Ro-overload)
* [C.168: Define overloaded operators in the namespace of their operands](#Ro-namespace)
* [C.170: If you feel like overloading a lambda, use a generic lambda](#Ro-lambda)
* [C.180: Use `union`s to save Memory](#Ru-union)
* [C.181: Avoid "naked" `union`s](#Ru-naked)
* [C.182: Use anonymous `union`s to implement tagged unions](#Ru-anonymous)
* [C.183: Don't use a `union` for type punning](#Ru-pun)

### <a name="Rc-org"></a>C.1: Organize related data into structures (`struct`s or `class`es)


Probably impossible. Maybe a heuristic looking for data items used together is possible.



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Rc-regular"></a>C.11: Make concrete types regular


???

### <a name="Rh-domain"></a>C.120: Use class hierarchies to represent concepts with inherent hierarchical structure (only)


* Look for classes with lots of members that do nothing but throw.
* Flag every use of a nonpublic base class `B` where the derived class `D` does not override a virtual function or access a protected member in `B`, and `B` is not one of the following: empty, a template parameter or parameter pack of `D`, a class template specialized with `D`.

### <a name="Rh-abstract"></a>C.121: If a base class is used as an interface, make it a pure abstract class


* Warn on any class that contains data members and also has an overridable (non-`final`) virtual function.

### <a name="Rh-separation"></a>C.122: Use abstract classes as interfaces when complete separation of interface and implementation is needed


???

### <a name="Rh-abstract-ctor"></a>C.126: An abstract class typically doesn't need a constructor


Flag abstract classes with constructors.

### <a name="Rh-dtor"></a>C.127: A class with a virtual function should have a virtual or protected destructor


* A class with any virtual functions should have a destructor that is either public and virtual or else protected and nonvirtual.
* Flag `delete` of a class with a virtual function but no virtual destructor.

### <a name="Rh-override"></a>C.128: Virtual functions should specify exactly one of `virtual`, `override`, or `final`


* Compare names in base and derived classes and flag uses of the same name that does not override.
* Flag overrides with neither `override` nor `final`.
* Flag function declarations that use more than one of `virtual`, `override`, and `final`.

### <a name="Rh-kind"></a>C.129: When designing a class hierarchy, distinguish between implementation inheritance and interface inheritance


* Flag a derived to base conversion to a base with both data and virtual functions
(except for calls from a derived class member to a base class member)
* ???


### <a name="Rh-copy"></a>C.130: Redefine or prohibit copying for a base class; prefer a virtual `clone` function instead


* Flag a class with a virtual function and a non-user-defined copy operation.
* Flag an assignment of base class objects (objects of a class from which another has been derived).

### <a name="Rh-get"></a>C.131: Avoid trivial getters and setters


Flag multiple `get` and `set` member functions that simply access a member without additional semantics.

### <a name="Rh-virtual"></a>C.132: Don't make a function `virtual` without reason


* Flag a class with virtual functions but no derived classes.
* Flag a class where all member functions are virtual and have implementations.

### <a name="Rh-protected"></a>C.133: Avoid `protected` data


Flag classes with `protected` data.

### <a name="Rh-public"></a>C.134: Ensure all non-`const` data members have the same access level


Flag any class that has non-`const` data members with different access levels.

### <a name="Rh-mi-interface"></a>C.135: Use multiple inheritance to represent multiple distinct interfaces


???

### <a name="Rh-mi-implementation"></a>C.136: Use multiple inheritance to represent the union of implementation attributes


??? Herb: How about opposite enforcement: Flag any type that inherits from more than one non-empty base class?

### <a name="Rh-vbase"></a>C.137: Use `virtual` bases to avoid overly general base classes


???

### <a name="Rh-using"></a>C.138: Create an overload set for a derived class and its bases with `using`


Flag uses of `final`.


### <a name="Rh-final"></a>C.139: Use `final` sparingly


Flag uses of `final`.




Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Rh-poly"></a>C.145: Access polymorphic objects through pointers and references


Flag all slicing.

### <a name="Rh-dynamic_cast"></a>C.146: Use `dynamic_cast` where class hierarchy navigation is unavoidable


Flag all uses of `static_cast` for downcasts, including C-style casts that perform a `static_cast`.

### <a name="Rh-ptr-cast"></a>C.147: Use `dynamic_cast` to a reference type when failure to find the required class is considered an error


???

### <a name="Rh-ref-cast"></a>C.148: Use `dynamic_cast` to a pointer type when failure to find the required class is considered a valid alternative


???

### <a name="Rh-smart"></a>C.149: Use `unique_ptr` or `shared_ptr` to avoid forgetting to `delete` objects created using `new`


* Flag initialization of a naked pointer with the result of a `new`
* Flag `delete` of local variable

### <a name="Rh-make_unique"></a>C.150: Use `make_unique()` to construct objects owned by `unique_ptr`s


* Flag the repetitive usage of template specialization list `<Foo>`
* Flag variables declared to be `unique_ptr<Foo>`

### <a name="Rh-make_shared"></a>C.151: Use `make_shared()` to construct objects owned by `shared_ptr`s


* Flag the repetitive usage of template specialization list`<Foo>`
* Flag variables declared to be `shared_ptr<Foo>`

### <a name="Rh-array"></a>C.152: Never assign a pointer to an array of derived class objects to a pointer to its base


* Flag all combinations of array decay and base to derived conversions.
* Pass an array as a `span` rather than as a pointer, and don't let the array name suffer a derived-to-base conversion before getting into the `span`

### <a name="Ro-conventional"></a>C.160: Define operators primarily to mimic conventional usage


Possibly impossible.

### <a name="Ro-symmetric"></a>C.161: Use nonmember functions for symmetric operators


Flag member operator functions.

### <a name="Ro-equivalent"></a>C.162: Overload operations that are roughly equivalent


???

### <a name="Ro-equivalent-2"></a>C.163: Overload only for operations that are roughly equivalent


???

### <a name="Ro-conversion"></a>C.164: Avoid conversion operators


Flag all conversion operators.

### <a name="Ro-custom"></a>C.165: Use `using` for customization points


Unlikely, except for known customization points, such as `swap`.
The problem is that the unqualified and qualified lookups both have uses.

### <a name="Ro-address-of"></a>C.166: Overload unary `&` only as part of a system of smart pointers and references


Tricky. Warn if `&` is user-defined without also defining `->` for the result type.

### <a name="Ro-overload"></a>C.167: Use an operator for an operation with its conventional meaning


Tricky. Requires semantic insight.

### <a name="Ro-namespace"></a>C.168: Define overloaded operators in the namespace of their operands


* Flag operator definitions that are not it the namespace of their operands

### <a name="Ro-lambda"></a>C.170: If you feel like overloading a lambda, use a generic lambda


The compiler catches the attempt to overload a lambda.

### <a name="Ru-union"></a>C.180: Use `union`s to save memory


???

### <a name="Ru-naked"></a>C.181: Avoid "naked" `union`s


???

### <a name="Ru-anonymous"></a>C.182: Use anonymous `union`s to implement tagged unions


???

### <a name="Ru-pun"></a>C.183: Don't use a `union` for type punning


???



### <a name="Rc-struct"></a>C.2: Use `class` if the class has an invariant; use `struct` if the data members can vary independently


Look for `struct`s with all data private and `class`es with public members.

### <a name="Rc-zero"></a>C.20: If you can avoid defining default operations, do


(Not enforceable) While not enforceable, a good static analyzer can detect patterns that indicate a possible improvement to meet this rule.
For example, a class with a (pointer, size) pair of member and a destructor that `delete`s the pointer could probably be converted to a `vector`.

### <a name="Rc-five"></a>C.21: If you define or `=delete` any default operation, define or `=delete` them all


(Simple) A class should have a declaration (even a `=delete` one) for either all or none of the special functions.

### <a name="Rc-matched"></a>C.22: Make default operations consistent


* (Complex) A copy/move constructor and the corresponding copy/move assignment operator should write to the same member variables at the same level of dereference.
* (Complex) Any member variables written in a copy/move constructor should also be initialized by all other constructors.
* (Complex) If a copy/move constructor performs a deep copy of a member variable, then the destructor should modify the member variable.
* (Complex) If a destructor is modifying a member variable, that member variable should be written in any copy/move constructors or assignment operators.

### <a name="Rc-interface"></a>C.3: Represent the distinction between an interface and an implementation using a class


???

### <a name="Rc-dtor"></a>C.30: Define a destructor if a class needs an explicit action at object destruction


Look for likely "implicit resources", such as pointers and references. Look for classes with destructors even though all their data members have destructors.

### <a name="Rc-dtor-release"></a>C.31: All resources acquired by a class must be released by the class's destructor


* (Simple) If a class has pointer or reference member variables that are owners
(e.g., deemed owners by using `gsl::owner`), then they should be referenced in its destructor.
* (Hard) Determine if pointer or reference member variables are owners when there is no explicit statement of ownership
(e.g., look into the constructors).

### <a name="Rc-dtor-ptr"></a>C.32: If a class has a raw pointer (`T*`) or reference (`T&`), consider whether it might be owning


Look at the initialization of raw member pointers and member references and see if an allocation is used.

### <a name="Rc-dtor-ptr2"></a>C.33: If a class has an owning pointer member, define a destructor


* A class with a pointer data member is suspect.
* A class with an `owner<T>` should define its default operations.

### <a name="Rc-dtor-ref"></a>C.34: If a class has an owning reference member, define a destructor


* A class with a reference data member is suspect.
* A class with an `owner<T>` reference should define its default operations.

### <a name="Rc-dtor-virtual"></a>C.35: A base class destructor should be either public and virtual, or protected and nonvirtual


* A class with any virtual functions should have a destructor that is either public and virtual or else protected and nonvirtual.

### <a name="Rc-dtor-fail"></a>C.36: A destructor may not fail


(Simple) A destructor should be declared `noexcept`.

### <a name="Rc-dtor-noexcept"></a>C.37: Make destructors `noexcept`


(Simple) A destructor should be declared `noexcept`.

### <a name="Rc-member"></a>C.4: Make a function a member only if it needs direct access to the representation of a class


Look for member function that do not touch data members directly.
The snag is that many member functions that do not need to touch data members directly do.

### <a name="Rc-ctor"></a>C.40: Define a constructor if a class has an invariant


* Flag classes with user-defined copy operations but no constructor (a user-defined copy is a good indicator that the class has an invariant)

### <a name="Rc-complete"></a>C.41: A constructor should create a fully initialized object


* (Simple) Every constructor should initialize every member variable (either explicitly, via a delegating ctor call or via default construction).
* (Unknown) If a constructor has an `Ensures` contract, try to see if it holds as a postcondition.

### <a name="Rc-throw"></a>C.42: If a constructor cannot construct a valid object, throw an exception


### <a name="Rc-default0"></a>C.43: Ensure that a class has a default constructor


* Flag classes without a default constructor

### <a name="Rc-default00"></a>C.44: Prefer default constructors to be simple and non-throwing


* Flag throwing default constructors

### <a name="Rc-default"></a>C.45: Don't define a default constructor that only initializes data members; use in-class member initializers instead


(Simple) A default constructor should do more than just initialize member variables with constants.

### <a name="Rc-explicit"></a>C.46: By default, declare single-argument constructors explicit


(Simple) Single-argument constructors should be declared `explicit`. Good single argument non-`explicit` constructors are rare in most code based. Warn for all that are not on a "positive list".

### <a name="Rc-order"></a>C.47: Define and initialize member variables in the order of member declaration


(Simple) A member initializer list should mention the members in the same order they are declared.

### <a name="Rc-in-class-initializer"></a>C.48: Prefer in-class initializers to member initializers in constructors for constant initializers


* (Simple) Every constructor should initialize every member variable (either explicitly, via a delegating ctor call or via default construction).
* (Simple) Default arguments to constructors suggest an in-class initializer may be more appropriate.

### <a name="Rc-initialize"></a>C.49: Prefer initialization to assignment in constructors


(Moderate) Look for similar constructor bodies.

### <a name="Rc-helper"></a>C.5: Place helper functions in the same namespace as the class they support


* Flag global functions taking argument types from a single namespace.

### <a name="Rc-factory"></a>C.50: Use a factory function if you need "virtual behavior" during initialization


(Moderate) Look for similar constructor bodies.

### <a name="Rc-delegating"></a>C.51: Use delegating constructors to represent common actions for all constructors of a class


(Moderate) Look for similar constructor bodies.

### <a name="Rc-inheriting"></a>C.52: Use inheriting constructors to import constructors into a derived class that does not need further explicit initialization


Make sure that every member of the derived class is initialized.

### <a name="Rc-copy-assignment"></a>C.60: Make copy assignment non-`virtual`, take the parameter by `const&`, and return by non-`const&`


* (Simple) An assignment operator should not be virtual. Here be dragons!
* (Simple) An assignment operator should return `T&` to enable chaining, not alternatives like `const T&` which interfere with composability and putting objects in containers.
* (Moderate) An assignment operator should (implicitly or explicitly) invoke all base and member assignment operators.
Look at the destructor to determine if the type has pointer semantics or value semantics.

### <a name="Rc-copy-semantic"></a>C.61: A copy operation should copy


(Not enforceable)

### <a name="Rc-copy-self"></a>C.62: Make copy assignment safe for self-assignment


(Simple) Assignment operators should not contain the pattern `if (this == &a) return *this;` ???

### <a name="Rc-move-assignment"></a>C.63: Make move assignment non-`virtual`, take the parameter by `&&`, and return by non-`const &`


### <a name="Rc-move-semantic"></a>C.64: A move operation should move and leave its source in a valid state


(Not enforceable) Look for assignments to members in the move operation. If there is a default constructor, compare those assignments to the initializations in the default constructor.

### <a name="Rc-move-self"></a>C.65: Make move assignment safe for self-assignment


* (Moderate) In the case of self-assignment, a move assignment operator should not leave the object holding pointer members that have been `delete`d or set to `nullptr`.
* (Not enforceable) Look at the use of standard-library container types (incl. `string`) and consider them safe for ordinary (not life-critical) uses.

### <a name="Rc-move-noexcept"></a>C.66: Make move operations `noexcept`


(Simple) A move operation should be marked `noexcept`.

### <a name="Rc-copy-virtual"></a>C.67: A base class should suppress copying, and provide a virtual `clone` instead if "copying" is desired


A class with any virtual function should not have a copy constructor or copy assignment operator (compiler-generated or handwritten).

### <a name="Rc-standalone"></a>C.7: Don't define a class or enum and declare a variable of its type in the same statement


* Flag if the `}` of a class or enumeration definition is not followed by a `;`. The `;` is missing.

### <a name="Rc-class"></a>C.8: Use `class` rather than `struct` if any member is non-public


Flag classes declared with `struct` if there is a `private` or `public` member.

### <a name="Rc-eqdefault"></a>C.80: Use `=default` if you have to be explicit about using the default semantics


(Moderate) The body of a special operation should not have the same accessibility and semantics as the compiler-generated version, because that would be redundant

### <a name="Rc-delete"></a>C.81: Use `=delete` when you want to disable default behavior (without wanting an alternative)


The elimination of a default operation is (should be) based on the desired semantics of the class. Consider such classes suspect, but maintain a "positive list" of classes where a human has asserted that the semantics is correct.

### <a name="Rc-ctor-virtual"></a>C.82: Don't call virtual functions in constructors and destructors


* Flag calls of virtual functions from constructors and destructors.

### <a name="Rc-swap"></a>C.83: For value-like types, consider providing a `noexcept` swap function


* (Simple) A class without virtual functions should have a `swap` member function declared.
* (Simple) When a class has a `swap` member function, it should be declared `noexcept`.

### <a name="Rc-swap-fail"></a>C.84: A `swap` function may not fail


(Simple) When a class has a `swap` member function, it should be declared `noexcept`.

### <a name="Rc-swap-noexcept"></a>C.85: Make `swap` `noexcept`


(Simple) When a class has a `swap` member function, it should be declared `noexcept`.

### <a name="Rc-eq"></a>C.86: Make `==` symmetric with respect to operand types and `noexcept`


* Flag an `operator==()` for which the argument types differ; same for other comparison operators: `!=`, `<`, `<=`, `>`, and `>=`.
* Flag member `operator==()`s; same for other comparison operators: `!=`, `<`, `<=`, `>`, and `>=`.

### <a name="Rc-eq-base"></a>C.87: Beware of `==` on base classes


* Flag a virtual `operator==()`; same for other comparison operators: `!=`, `<`, `<=`, `>`, and `>=`.

### <a name="Rc-hash"></a>C.89: Make a `hash` `noexcept`


* Flag throwing `hash`es.

### <a name="Rc-private"></a>C.9: Minimize exposure of members


Flag protected data.



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### Con
* [Con.1: By default, make objects immutable](#Rconst-immutable)
* [Con.2: By default, make member functions `const`](#Rconst-fct)
* [Con.3: By default, pass pointers and references to `const`s](#Rconst-ref)
* [Con.4: Use `const` to define objects with values that do not change after construction](#Rconst-const)
* [Con.5: Use `constexpr` for values that can be computed at compile time](#Rconst-constexpr)

### <a name="Rconst-immutable"></a>Con.1: By default, make objects immutable


* Flag non-const variables that are not modified (except for parameters to avoid many false positives)

### <a name="Rconst-fct"></a>Con.2: By default, make member functions `const`


* Flag a member function that is not marked `const`, but that does not perform a non-`const` operation on any member variable.

### <a name="Rconst-ref"></a>Con.3: By default, pass pointers and references to `const`s


* Flag function that does not modify an object passed by  pointer or reference to non-`const`
* Flag a function that (using a cast) modifies an object passed by pointer or reference to `const`

### <a name="Rconst-const"></a>Con.4: Use `const` to define objects with values that do not change after construction


* Flag unmodified non-`const` variables.

### <a name="Rconst-constexpr"></a>Con.5: Use `constexpr` for values that can be computed at compile time


* Flag `const` definitions with constant expression initializers.

### CP
* [CP.1: Assume that your code will run as part of a multi-threaded program](#Rconc-multi)
* [CP.2: Avoid data races](#Rconc-races)
* [CP.3: Minimize explicit sharing of writable data](#Rconc-data)
* [CP.4: Think in terms of tasks, rather than threads](#Rconc-task)
* [CP.8: Don't try to use `volatile` for synchronization](#Rconc-volatile)
* [CP.con: Concurrency](#SScp-con)
* [CP.par: Parallelism](#SScp-par)
* [CP.mess: Message passing](#SScp-mess)
* [CP.vec: Vectorization](#SScp-vec)
* [CP.free: Lock-free programming](#SScp-free)
* [CP.etc: Etc. concurrency rules](#SScp-etc)
* [CP.20: Use RAII, never plain `lock()`/`unlock()`](#Rconc-raii)
* [CP.21: Use `std::lock()` to acquire multiple `mutex`es](#Rconc-lock)
* [CP.22: Never call unknown code while holding a lock (e.g., a callback)](#Rconc-unknown)
* [CP.23: Think of a joining `thread` as a scoped container](#Rconc-join)
* [CP.24: Think of a detached `thread` as a global container](#Rconc-detach)
* [CP.25: Prefer `gsl::raii_thread` over `std::thread` unless you plan to `detach()`](#Rconc-raii_thread)
* [CP.26: Prefer `gsl::detached_thread` over `std::thread` if you plan to `detach()`](#Rconc-detached_thread)
* [CP.27: Use plain `std::thread` for `thread`s that detach based on a run-time condition (only)](#Rconc-thread)
* [CP.28: Remember to join scoped `thread`s that are not `detach()`ed](#Rconc-join-undetached)
* [CP.30: Do not pass pointers to local variables to non-`raii_thread`s](#Rconc-pass)
* [CP.31: Pass small amounts of data between threads by value, rather than by reference or pointer](#Rconc-data-by-value)
* [CP.32: To share ownership between unrelated `thread`s use `shared_ptr`](#Rconc-shared)
* [CP.40: Minimize context switching](#Rconc-switch)
* [CP.41: Minimize thread creation and destruction](#Rconc-create)
* [CP.42: Don't `wait` without a condition](#Rconc-wait)
* [CP.43: Minimize time spent in a critical section](#Rconc-time)
* [CP.44: Remember to name your `lock_guard`s and `unique_lock`s](#Rconc-name)
* [CP.50: Define a `mutex` together with the data it protects](#Rconc-mutex)
* [CP.60: Use a `future` to return a value from a concurrent task](#Rconc-future)
* [CP.61: Use a `async()` to spawn a concurrent task](#Rconc-async)
* [CP.100: Don't use lock-free programming unless you absolutely have to](#Rconc-lockfree)
* [CP.101: Distrust your hardware/compiler combination](#Rconc-distrust)
* [CP.102: Carefully study the literature](#Rconc-literature)
* [CP.110: Do not write your own double-checked locking for initialization](#Rconc-double)
* [CP.111: Use a conventional pattern if you really need double-checked locking](#Rconc-double-pattern)
* [CP.200: Use `volatile` only to talk to non-C++ memory](#Rconc-volatile2)
* [CP.201: ??? Signals](#Rconc-signal)

### <a name="Rconc-multi"></a>CP.1: Assume that your code will run as part of a multi-threaded program


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rconc-lockfree"></a>CP.100: Don't use lock-free programming unless you absolutely have to


Have strong rules for re-testing in place that covers any change in hardware, operating system, compiler, and libraries.


### <a name="Rconc-distrust"></a>CP.101: Distrust your hardware/compiler combination


Have strong rules for re-testing in place that covers any change in hardware, operating system, compiler, and libraries.


### <a name="Rconc-literature"></a>CP.102: Carefully study the literature


??? Is it possible to detect the idiom?


### <a name="Rconc-double"></a>CP.110: Do not write your own double-checked locking for initialization


??? Is it possible to detect the idiom?


### <a name="Rconc-double-pattern"></a>CP.111: Use a conventional pattern if you really need double-checked locking


??? Is it possible to detect the idiom?


### <a name="Rconc-races"></a>CP.2: Avoid data races


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rconc-raii"></a>CP.20: Use RAII, never plain `lock()`/`unlock()`


Flag calls of member `lock()` and `unlock()`.  ???


### <a name="Rconc-volatile2"></a>CP.200: Use `volatile` only to talk to non-C++ memory


* Flag `volatile T` local and member variables; almost certainly you intended to use `atomic<T>` instead.
* ???

### <a name="Rconc-signal"></a>CP.201: ??? Signals


Would need to be heuristic.
Look for exception values "leaked" out of `catch` clauses.

### <a name="Rconc-lock"></a>CP.21: Use `std::lock()` to acquire multiple `mutex`es


Detect the acquisition of multiple `mutex`es.
This is undecidable in general, but catching common simple examples (like the one above) is easy.


### <a name="Rconc-unknown"></a>CP.22: Never call unknown code while holding a lock (e.g., a callback)


* Flag calling a virtual function with a non-recursive `mutex` held
* Flag calling a callback with a non-recursive `mutex` held


### <a name="Rconc-join"></a>CP.23: Think of a joining `thread` as a scoped container


Ensure that `raii_thread`s don't `detach()`.
After that, the usual lifetime and ownership (for local objects) enforcement applies.


### <a name="Rconc-detach"></a>CP.24: Think of a detached `thread` as a global container


In general, it is undecidable whether a `detach()` is executed for a `thread`, but simple common cases are easily detected.
If we cannot prove that a `thread` does not `detach()`, we must assume that it does and that it outlives the scope in which it was constructed;
After that, the usual lifetime and ownership (for global objects) enforcement applies.


### <a name="Rconc-raii_thread"></a>CP.25: Prefer `gsl::raii_thread` over `std::thread` unless you plan to `detach()`


???

### <a name="Rconc-detached_thread"></a>CP.26: Prefer `gsl::detached_thread` over `std::thread` if you plan to `detach()`


???



### <a name="Rconc-thread"></a>CP.27: Use plain `std::thread` for `thread`s that detach based on a run-time condition (only)


???



### <a name="Rconc-join-undetached"></a>CP.28: Remember to join scoped `thread`s that are not `detach()`ed


* Flag `join`s for `raii_thread`s ???
* Flag `detach`s for `detached_thread`s


### <a name="Rconc-data"></a>CP.3: Minimize explicit sharing of writable data


???


### <a name="RRconc-pass"></a>CP.30: Do not pass pointers to local variables to non-`raii_thread`s


Flag pointers to locals passed in the constructor of a plain `thread`.


### <a name="Rconc-data-by-value"></a>CP.31: Pass small amounts of data between threads by value, rather than by reference or pointer


???




Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Rconc-task"></a>CP.4: Think in terms of tasks, rather than threads


???

### <a name="Rconc-switch"></a>CP.40: Minimize context switching


???


### <a name="Rconc-create"></a>CP.41: Minimize thread creation and destruction


???


### <a name="Rconc-wait"></a>CP.42: Don't `wait` without a condition


Flag all `wait`s without conditions.


### <a name="Rconc-time"></a>CP.43: Minimize time spent in a critical section


Impossible in general.
Flag "naked" `lock()` and `unlock()`.


### <a name="Rconc-name"></a>CP.44: Remember to name your `lock_guard`s and `unique_lock`s


Flag all unnamed `lock_guard`s and `unique_lock`s.





Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Rconc-future"></a>CP.60: Use a `future` to return a value from a concurrent task


???

### <a name="Rconc-async"></a>CP.61: Use a `async()` to spawn a concurrent task


???


### <a name="Rconc-volatile"></a>CP.8: Don't try to use `volatile` for synchronization


Flag calls of member `lock()` and `unlock()`.  ???




Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### CPL
* [CPL.1: Prefer C++ to C](#Rcpl-C)
* [CPL.2: If you must use C, use the common subset of C and C++, and compile the C code as C++](#Rcpl-subset)
* [CPL.3: If you must use C for interfaces, use C++ in the code using such interfaces](#Rcpl-interface)

### <a name="Rcpl-C"></a>CPL.1: Prefer C++ to C


Use a C++ compiler.

### <a name="Rcpl-subset"></a>CPL.2: If you must use C, use the common subset of C and C++, and compile the C code as C++


* Flag if using a build mode that compiles code as C.

* The C++ compiler will enforce that the code is valid C++ unless you use C extension options.

### <a name="Rcpl-interface"></a>CPL.3: If you must use C for interfaces, use C++ in the calling code using such interfaces


None needed

### E
* [E.1: Develop an error-handling strategy early in a design](#Re-design)
* [E.2: Throw an exception to signal that a function can't perform its assigned task](#Re-throw)
* [E.3: Use exceptions for error handling only](#Re-errors)
* [E.4: Design your error-handling strategy around invariants](#Re-design-invariants)
* [E.5: Let a constructor establish an invariant, and throw if it cannot](#Re-invariant)
* [E.6: Use RAII to prevent leaks](#Re-raii)
* [E.7: State your preconditions](#Re-precondition)
* [E.8: State your postconditions](#Re-postcondition)
* [E.12: Use `noexcept` when exiting a function because of a `throw` is impossible or unacceptable](#Re-noexcept)
* [E.13: Never throw while being the direct owner of an object](#Re-never-throw)
* [E.14: Use purpose-designed user-defined types as exceptions (not built-in types)](#Re-exception-types)
* [E.15: Catch exceptions from a hierarchy by reference](#Re-exception-ref)
* [E.16: Destructors, deallocation, and `swap` must never fail](#Re-never-fail)
* [E.17: Don't try to catch every exception in every function](#Re-not-always)
* [E.18: Minimize the use of explicit `try`/`catch`](#Re-catch)
* [E.19: Use a `final_action` object to express cleanup if no suitable resource handle is available](#Re-finally)
* [E.25: If you can't throw exceptions, simulate RAII for resource management](#Re-no-throw-raii)
* [E.26: If you can't throw exceptions, consider failing fast](#Re-no-throw-crash)
* [E.27: If you can't throw exceptions, use error codes systematically](#Re-no-throw-codes)
* [E.28: Avoid error handling based on global state (e.g. `errno`)](#Re-no-throw)

### <a name="Re-design"></a>E.1: Develop an error-handling strategy early in a design


Would need to be heuristic.
Look for exception values "leaked" out of `catch` clauses.

### <a name="Re-noexcept"></a>E.12: Use `noexcept` when exiting a function because of a `throw` is impossible or unacceptable


Catch `throw` and `catch` of a built-in type. Maybe warn about `throw` and `catch` using an standard-library `exception` type. Obviously, exceptions derived from the `std::exception` hierarchy is fine.

### <a name="Re-never-throw"></a>E.13: Never throw while being the direct owner of an object


Catch `throw` and `catch` of a built-in type. Maybe warn about `throw` and `catch` using an standard-library `exception` type. Obviously, exceptions derived from the `std::exception` hierarchy is fine.

### <a name="Re-exception-types"></a>E.14: Use purpose-designed user-defined types as exceptions (not built-in types)


Catch `throw` and `catch` of a built-in type. Maybe warn about `throw` and `catch` using an standard-library `exception` type. Obviously, exceptions derived from the `std::exception` hierarchy is fine.

### <a name="Re-exception-ref"></a>E.15: Catch exceptions from a hierarchy by reference


Flag by-value exceptions if their types are part of a hierarchy (could require whole-program analysis to be perfect).

### <a name="Re-never-fail"></a>E.16: Destructors, deallocation, and `swap` must never fail


Catch destructors, deallocation operations, and `swap`s that `throw`.
Catch such operations that are not `noexcept`.

### <a name="Re-not-always"></a>E.17: Don't try to catch every exception in every function


* Flag nested try-blocks.
* Flag source code files with a too high ratio of try-blocks to functions. (??? Problem: define "too high")

### <a name="Re-catch"></a>E.18: Minimize the use of explicit `try`/`catch`


??? hard, needs a heuristic

### <a name="Re-finally"></a>E.19: Use a `final_action` object to express cleanup if no suitable resource handle is available


Heuristic: Detect `goto exit;`

### <a name="Re-throw"></a>E.2: Throw an exception to signal that a function can't perform its assigned task


Would need to be heuristic.
Look for exception values "leaked" out of `catch` clauses.

### <a name="Re-no-throw-raii"></a>E.25: If you can't throw exceptions, simulate RAII for resource management


Possible (only) for specific versions of this idea: e.g., test for systematic test of `valid()` after resource handle construction

### <a name="Re-no-throw-crash"></a>E.26: If you can't throw exceptions, consider failing fast


Awkward

### <a name="Re-no-throw-codes"></a>E.27: If you can't throw exceptions, use error codes systematically


Awkward.

### <a name="Re-no-throw"></a>E.28: Avoid error handling based on global state (e.g. `errno`)


Awkward.

### <a name="Re-errors"></a>E.3: Use exceptions for error handling only


Would need to be heuristic.
Look for exception values "leaked" out of `catch` clauses.

### <a name="Re-design-invariants"></a>E.4: Design your error-handling strategy around invariants


???

### <a name="Re-invariant"></a>E.5: Let a constructor establish an invariant, and throw if it cannot


Flag classes with `private` state without a constructor (public, protected, or private).

### <a name="Re-raii"></a>E.6: Use RAII to prevent leaks


???

### <a name="Re-precondition"></a>E.7: State your preconditions


Catch `throw` and `catch` of a built-in type. Maybe warn about `throw` and `catch` using an standard-library `exception` type. Obviously, exceptions derived from the `std::exception` hierarchy is fine.

### <a name="Re-postcondition"></a>E.8: State your postconditions


Catch `throw` and `catch` of a built-in type. Maybe warn about `throw` and `catch` using an standard-library `exception` type. Obviously, exceptions derived from the `std::exception` hierarchy is fine.

### Enum
* [Enum.1: Prefer enumerations over macros](#Renum-macro)
* [Enum.2: Use enumerations to represent sets of related named constants](#Renum-set)
* [Enum.3: Prefer `enum class`es over "plain" `enum`s](#Renum-class)
* [Enum.4: Define operations on enumerations for safe and simple use](#Renum-oper)
* [Enum.5: Don't use `ALL_CAPS` for enumerators](#Renum-caps)
* [Enum.6: Avoid unnamed enumerations](#Renum-unnamed)
* [Enum.7: Specify the underlying type of an enumeration only when necessary](#Renum-underlying)
* [Enum.8: Specify enumerator values only when necessary](#Renum-value)

### <a name="Renum-macro"></a>Enum.1: Prefer enumerations over macros


Flag macros that define integer values.


### <a name="Renum-set"></a>Enum.2: Use enumerations to represent sets of related named constants


* Flag `switch`-statements where the `case`s cover most but not all enumerators of an enumeration.
* Flag `switch`-statements where the `case`s cover a few enumerators of an enumeration, but has no `default`.


### <a name="Renum-class"></a>Enum.3: Prefer class enums over "plain" enums


(Simple) Warn on any non-class `enum` definition.

### <a name="Renum-oper"></a>Enum.4: Define operations on enumerations for safe and simple use


Flag repeated expressions cast back into an enumeration.


### <a name="Renum-caps"></a>Enum.5: Don't use `ALL_CAPS` for enumerators


Flag ALL_CAPS enumerators.

### <a name="Renum-unnamed"></a>Enum.6: Avoid unnamed enumerations


Flag unnamed enumerations.


### <a name="Renum-underlying"></a>Enum.7: Specify the underlying type of an enumeration only when necessary


????


### <a name="Renum-value"></a>Enum.8: Specify enumerator values only when necessary


* Flag duplicate enumerator values
* Flag explicitly specified all-consecutive enumerator values


### ES
* [ES.28: Use lambdas for complex initialization, especially of `const` variables](#Res-lambda-init)
* [ES.1: Prefer the standard library to other libraries and to "handcrafted code"](#Res-lib)
* [ES.2: Prefer suitable abstractions to direct use of language features](#Res-abstr)
* [ES.5: Keep scopes small](#Res-scope)
* [ES.6: Declare names in for-statement initializers and conditions to limit scope](#Res-cond)
* [ES.7: Keep common and local names short, and keep uncommon and nonlocal names longer](#Res-name-length)
* [ES.8: Avoid similar-looking names](#Res-name-similar)
* [ES.9: Avoid `ALL_CAPS` names](#Res-not-CAPS)
* [ES.10: Declare one name (only) per declaration](#Res-name-one)
* [ES.11: Use `auto` to avoid redundant repetition of type names](#Res-auto)
* [ES.12: Do not reuse names in nested scopes](#Res-reuse)
* [ES.20: Always initialize an object](#Res-always)
* [ES.21: Don't introduce a variable (or constant) before you need to use it](#Res-introduce)
* [ES.22: Don't declare a variable until you have a value to initialize it with](#Res-init)
* [ES.23: Prefer the `{}`-initializer syntax](#Res-list)
* [ES.24: Use a `unique_ptr<T>` to hold pointers in code that may throw](#Res-unique)
* [ES.25: Declare an object `const` or `constexpr` unless you want to modify its value later on](#Res-const)
* [ES.26: Don't use a variable for two unrelated purposes](#Res-recycle)
* [ES.27: Use `std::array` or `stack_array` for arrays on the stack](#Res-stack)
* [ES.28: Use lambdas for complex initialization, especially of `const` variables](#Res-lambda-init)
* [ES.30: Don't use macros for program text manipulation](#Res-macros)
* [ES.31: Don't use macros for constants or "functions"](#Res-macros2)
* [ES.32: Use `ALL_CAPS` for all macro names](#Res-ALL_CAPS)
* [ES.33: If you must use macros, give them unique names](#Res-MACROS)
* [ES.34: Don't define a (C-style) variadic function](#Res-ellipses)
* [ES.40: Avoid complicated expressions](#Res-complicated)
* [ES.41: If in doubt about operator precedence, parenthesize](#Res-parens)
* [ES.42: Keep use of pointers simple and straightforward](#Res-ptr)
* [ES.43: Avoid expressions with undefined order of evaluation](#Res-order)
* [ES.44: Don't depend on order of evaluation of function arguments](#Res-order-fct)
* [ES.45: Avoid narrowing conversions](#Res-narrowing)
* [ES.46: Avoid "magic constants"; use symbolic constants](#Res-magic)
* [ES.47: Use `nullptr` rather than `0` or `NULL`](#Res-nullptr)
* [ES.48: Avoid casts](#Res-casts)
* [ES.49: If you must use a cast, use a named cast](#Res-casts-named)
* [ES.50: Don't cast away `const`](#Res-casts-const)
* [ES.55: Avoid the need for range checking](#Res-range-checking)
* [ES.56: Avoid `std::move()` in application code](#Res-move)
* [ES.60: Avoid `new` and `delete` outside resource management functions](#Res-new)
* [ES.61: Delete arrays using `delete[]` and non-arrays using `delete`](#Res-del)
* [ES.62: Don't compare pointers into different arrays](#Res-arr2)
* [ES.63: Don't slice](#Res-slice)
* [ES.70: Prefer a `switch`-statement to an `if`-statement when there is a choice](#Res-switch-if)
* [ES.71: Prefer a range-`for`-statement to a `for`-statement when there is a choice](#Res-for-range)
* [ES.72: Prefer a `for`-statement to a `while`-statement when there is an obvious loop variable](#Res-for-while)
* [ES.73: Prefer a `while`-statement to a `for`-statement when there is no obvious loop variable](#Res-while-for)
* [ES.74: Prefer to declare a loop variable in the initializer part of a `for`-statement](#Res-for-init)
* [ES.75: Avoid `do`-statements](#Res-do)
* [ES.76: Avoid `goto`](#Res-goto)
* [ES.77: ??? `continue`](#Res-continue)
* [ES.78: Always end a non-empty `case` with a `break`](#Res-break)
* [ES.79: ??? `default`](#Res-default)
* [ES.85: Make empty statements visible](#Res-empty)
* [ES.86: Avoid modifying loop control variables inside the body of raw for-loops](#Res-loop-counter)
* [ES.100: Don't mix signed and unsigned arithmetic](#Res-mix)
* [ES.101: Use unsigned types for bit manipulation](#Res-unsigned)
* [ES.102: Use signed types for arithmetic](#Res-signed)
* [ES.103: Don't overflow](#Res-overflow)
* [ES.104: Don't underflow](#Res-underflow)
* [ES.105: Don't divide by zero](#Res-zero)
* [ES.21: Don't introduce a variable (or constant) before you need to use it](#Res-introduce)

### <a name="Res-lib"></a>ES.1: Prefer the standard library to other libraries and to "handcrafted code"


Not easy. ??? Look for messy loops, nested loops, long functions, absence of function calls, lack of use of non-built-in types. Cyclomatic complexity?

### <a name="Res-name-one"></a>ES.10: Declare one name (only) per declaration


Flag non-function arguments with multiple declarators involving declarator operators (e.g., `int* p, q;`)

### <a name="Res-mix"></a>ES.100: Don't mix signed and unsigned arithmetic


Compilers already know and sometimes warn.

### <a name="Res-unsigned"></a>ES.101: Use unsigned types for bit manipulation


* Just about impossible in general because of the use of unsigned subscripts in the standard library
* ???

### <a name="Res-signed"></a>ES.102: Use signed types for arithmetic


* Flag mixed signed and unsigned arithmetic
* Flag results of unsigned arithmetic assigned to or printed as signed.
* Flag unsigned literals (e.g. `-2`) used as container subscripts.

### <a name="Res-overflow"></a>ES.103: Don't overflow


???

### <a name="Res-underflow"></a>ES.104: Don't underflow


???

### <a name="Res-zero"></a>ES.105: Don't divide by zero


* Flag division by an integral value that could be zero

### <a name="Res-auto"></a>ES.11: Use `auto` to avoid redundant repetition of type names


Flag redundant repetition of type names in a declaration.

### <a name="Res-reuse"></a>ES.12: Do not reuse names in nested scopes


* Flag reuse of a name in nested local scopes
* Flag reuse of a member name as a local variable in a member function
* Flag reuse of a global name as a local variable or a member name
* Flag reuse of a base class member name in a derived class (except for function names)

### <a name="Res-abstr"></a>ES.2: Prefer suitable abstractions to direct use of language features


Not easy. ??? Look for messy loops, nested loops, long functions, absence of function calls, lack of use of non-built-in types. Cyclomatic complexity?

### <a name="Res-always"></a>ES.20: Always initialize an object


* Flag every uninitialized variable.
Don't flag variables of user-defined types with default constructors.
* Check that an uninitialized buffer is written into *immediately* after declaration.
Passing an uninitialized variable as a reference to non-`const` argument can be assumed to be a write into the variable.

### <a name="Res-introduce"></a>ES.21: Don't introduce a variable (or constant) before you need to use it


Flag declarations that are distant from their first use.

### <a name="Res-init"></a>ES.22: Don't declare a variable until you have a value to initialize it with


* Flag declarations with default initialization that are assigned to before they are first read.
* Flag any complicated computation after an uninitialized variable and before its use.

### <a name="Res-list"></a>ES.23: Prefer the `{}` initializer syntax


Tricky.

* Don't flag uses of `=` for simple initializers.
* Look for `=` after `auto` has been seen.

### <a name="Res-unique"></a>ES.24: Use a `unique_ptr<T>` to hold pointers


Look for raw pointers that are targets of `new`, `malloc()`, or functions that may return such pointers.

### <a name="Res-const"></a>ES.25: Declare an object `const` or `constexpr` unless you want to modify its value later on


Look to see if a variable is actually mutated, and flag it if
not. Unfortunately, it may be impossible to detect when a non-`const` was not
*intended* to vary (vs when it merely did not vary).

### <a name="Res-recycle"></a>ES.26: Don't use a variable for two unrelated purposes


Flag recycled variables.

### <a name="Res-stack"></a>ES.27: Use `std::array` or `stack_array` for arrays on the stack


* Flag arrays with non-constant bounds (C-style VLAs)
* Flag arrays with non-local constant bounds

### <a name="Res-lambda-init"></a>ES.28: Use lambdas for complex initialization, especially of `const` variables


Hard. At best a heuristic. Look for an uninitialized variable followed by a loop assigning to it.

### <a name="Res-macros"></a>ES.30: Don't use macros for program text manipulation


### <a name="Res-macros2"></a>ES.31: Don't use macros for constants or "functions"


### <a name="Res-ALL_CAPS"></a>ES.32: Use `ALL_CAPS` for all macro names


Scream when you see a lower case macro.

### <a name="Res-MACROS"></a>ES.33: If you must use macros, give them unique names


Warn against short macro names.



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Res-complicated"></a>ES.40: Avoid complicated expressions


Tricky. How complicated must an expression be to be considered complicated? Writing computations as statements with one operation each is also confusing. Things to consider:

* side effects: side effects on multiple non-local variables (for some definition of non-local) can be suspect, especially if the side effects are in separate subexpressions
* writes to aliased variables
* more than N operators (and what should N be?)
* reliance of subtle precedence rules
* uses undefined behavior (can we catch all undefined behavior?)
* implementation defined behavior?
* ???

### <a name="Res-parens"></a>ES.41: If in doubt about operator precedence, parenthesize


* Flag combinations of bitwise-logical operators and other operators.
* Flag assignment operators not as the leftmost operator.
* ???

### <a name="Res-ptr"></a>ES.42: Keep use of pointers simple and straightforward


We need a heuristic limiting the complexity of pointer arithmetic statement.

### <a name="Res-order"></a>ES.43: Avoid expressions with undefined order of evaluation


Can be detected by a good analyzer.

### <a name="Res-order-fct"></a>ES.44: Don't depend on order of evaluation of function arguments


Can be detected by a good analyzer.

### <a name="Res-magic"></a>ES.45: Avoid "magic constants"; use symbolic constants


Flag literals in code. Give a pass to `0`, `1`, `nullptr`, `n`, `""`, and others on a positive list.

### <a name="Res-narrowing"></a>ES.46: Avoid lossy (narrowing, truncating) arithmetic conversions


A good analyzer can detect all narrowing conversions. However, flagging all narrowing conversions will lead to a lot of false positives. Suggestions:

* flag all floating-point to integer conversions (maybe only `float`->`char` and `double`->`int`. Here be dragons! we need data)
* flag all `long`->`char` (I suspect `int`->`char` is very common. Here be dragons! we need data)
* consider narrowing conversions for function arguments especially suspect

### <a name="Res-nullptr"></a>ES.47: Use `nullptr` rather than `0` or `NULL`


Flag uses of `0` and `NULL` for pointers. The transformation may be helped by simple program transformation.

### <a name="Res-casts"></a>ES.48: Avoid casts


* Force the elimination of C-style casts
* Warn against named casts
* Warn if there are many functional style casts (there is an obvious problem in quantifying 'many').

### <a name="Res-casts-named"></a>ES.49: If you must use a cast, use a named cast


Flag C-style and functional casts.

### <a name="Res-scope"></a>ES.5: Keep scopes small


* Flag loop variable declared outside a loop and not used after the loop
* Flag when expensive resources, such as file handles and locks are not used for N-lines (for some suitable N)

### <a name="Res-casts-const"></a>ES.50: Don't cast away `const`


Flag `const_cast`s.

### <a name="Res-range-checking"></a>ES.55: Avoid the need for range checking


Look for explicit range checks and heuristically suggest alternatives.

### <a name="Res-move"></a>ES.56: Write `std::move()` only when you need to explicitly move an object to another scope


* Flag use of `std::move(x)` where `x` is an rvalue or the language will already treat it as an rvalue, including `return std::move(local_variable);` and `std::move(f())` on a function that returns by value.
* Flag functions taking an `S&&` parameter if there is no `const S&` overload to take care of lvalues.
* Flag a `std::move`s argument passed to a parameter, except when the parameter type is one of the following: an `X&&` rvalue reference; a `T&&` forwarding reference where `T` is a template parameter type; or by value and the type is move-only.
* Flag when `std::move` is applied to a forwarding reference (`T&&` where `T` is a template parameter type). Use `std::forward` instead.
* Flag when `std::move` is applied to other than an rvalue reference. (More general case of the previous rule to cover the non-forwarding cases.)
* Flag when `std::forward` is applied to an rvalue reference (`X&&` where `X` is a concrete type). Use `std::move` instead.
* Flag when `std::forward` is applied to other than a forwarding reference. (More general case of the previous rule to cover the non-moving cases.)
* Flag when an object is potentially moved from and the next operation is a `const` operation; there should first be an intervening non-`const` operation, ideally assignment, to first reset the object's value.

### <a name="Res-cond"></a>ES.6: Declare names in for-statement initializers and conditions to limit scope


* Flag loop variables declared before the loop and not used after the loop
* (hard) Flag loop variables declared before the loop and used after the loop for an unrelated purpose.

### <a name="Res-new"></a>ES.60: Avoid `new` and `delete` outside resource management functions


Flag naked `new`s and naked `delete`s.

### <a name="Res-del"></a>ES.61: Delete arrays using `delete[]` and non-arrays using `delete`


* if the `new` and the `delete` is in the same scope, mistakes can be flagged.
* if the `new` and the `delete` are in a constructor/destructor pair, mistakes can be flagged.

### <a name="Res-arr2"></a>ES.62: Don't compare pointers into different arrays


???

### <a name="Res-slice"></a>ES.63: Don't slice


Warn against slicing.

### <a name="Res-name-length"></a>ES.7: Keep common and local names short, and keep uncommon and nonlocal names longer


Check length of local and non-local names. Also take function length into account.

### <a name="Res-switch-if"></a>ES.70: Prefer a `switch`-statement to an `if`-statement when there is a choice


Flag `if`-`then`-`else` chains that check against constants (only).

### <a name="Res-for-range"></a>ES.71: Prefer a range-`for`-statement to a `for`-statement when there is a choice


Look at loops, if a traditional loop just looks at each element of a sequence, and there are no side-effects on what it does with the elements, rewrite the loop to a ranged-`for` loop.

### <a name="Res-for-while"></a>ES.72: Prefer a `for`-statement to a `while`-statement when there is an obvious loop variable


???

### <a name="Res-while-for"></a>ES.73: Prefer a `while`-statement to a `for`-statement when there is no obvious loop variable


???

### <a name="Res-for-init"></a>ES.74: Prefer to declare a loop variable in the initializer part of a `for`-statement


Warn when a variable modified inside the `for`-statement is declared outside the loop and not being used outside the loop.

**Discussion**: Scoping the loop variable to the loop body also helps code optimizers greatly. Recognizing that the induction variable
is only accessible in the loop body unblocks optimizations such as hoisting, strength reduction, loop-invariant code motion, etc.

### <a name="Res-do"></a>ES.75: Avoid `do`-statements


???

### <a name="Res-goto"></a>ES.76: Avoid `goto`


* Flag `goto`. Better still flag all `goto`s that do not jump from a nested loop to the statement immediately after a nest of loops.

### <a name="Res-continue"></a>ES.77: ??? `continue`


???

### <a name="Res-break"></a>ES.78: Always end a non-empty `case` with a `break`


Flag all fallthroughs from non-empty `case`s.

### <a name="Res-default"></a>ES.79: ??? `default`


???

### <a name="Res-name-similar"></a>ES.8: Avoid similar-looking names


* Check names against a list of known confusing letter and digit combinations.
* Flag a declaration of a variable, function, or enumerator that hides a class or enumeration declared in the same scope.

### <a name="Res-empty"></a>ES.85: Make empty statements visible


Flag empty statements that are not blocks and don't contain comments.

### <a name="Res-loop-counter"></a>ES.86: Avoid modifying loop control variables inside the body of raw for-loops


Flag variables that are potentially updated (have a non-const use) in both the loop control iteration-expression and the loop body.

### <a name="Res-not-CAPS"></a>ES.9: Avoid `ALL_CAPS` names


Flag all uses of ALL CAPS. For older code, accept ALL CAPS for macro names and flag all non-ALL-CAPS macro names.

### F
* [F.1: "Package" meaningful operations as carefully named functions](#Rf-package)
* [F.2: A function should perform a single logical operation](#Rf-logical)
* [F.3: Keep functions short and simple](#Rf-single)
* [F.4: If a function may have to be evaluated at compile time, declare it `constexpr`](#Rf-constexpr)
* [F.5: If a function is very small and time-critical, declare it inline](#Rf-inline)
* [F.6: If your function may not throw, declare it `noexcept`](#Rf-noexcept)
* [F.7: For general use, take `T*` or `T&` arguments rather than smart pointers](#Rf-smart)
* [F.8: Prefer pure functions](#Rf-pure)
* [F.15: Prefer simple and conventional ways of passing information](#Rf-conventional)
* [F.16: For "in" parameters, pass cheaply-copied types by value and others by reference to `const`](#Rf-in)
* [F.17: For "in-out" parameters, pass by reference to non-`const`](#Rf-inout)
* [F.18: For "consume" parameters, pass by `X&&` and `std::move` the parameter](#Rf-consume)
* [F.19: For "forward" parameters, pass by `TP&&` and only `std::forward` the parameter](#Rf-forward)
* [F.20: For "out" output values, prefer return values to output parameters](#Rf-out)
* [F.21: To return multiple "out" values, prefer returning a tuple or struct](#Rf-out-multi)
* [F.60: Prefer `T*` over `T&` when "no argument" is a valid option](#Rf-ptr-ref)
* [F.22: Use `T*` or `owner<T*>` or a smart pointer to designate a single object](#Rf-ptr)
* [F.23: Use a `not_null<T>` to indicate "null" is not a valid value](#Rf-nullptr)
* [F.24: Use a `span<T>` or a `span_p<T>` to designate a half-open sequence](#Rf-range)
* [F.25: Use a `zstring` or a `not_null<zstring>` to designate a C-style string](#Rf-string)
* [F.26: Use a `unique_ptr<T>` to transfer ownership where a pointer is needed](#Rf-unique_ptr)
* [F.27: Use a `shared_ptr<T>` to share ownership](#Rf-shared_ptr)
* [F.42: Return a `T*` to indicate a position (only)](#Rf-return-ptr)
* [F.43: Never (directly or indirectly) return a pointer or a reference to a local object](#Rf-dangle)
* [F.44: Return a `T&` when copy is undesirable and "returning no object" isn't an option](#Rf-return-ref)
* [F.45: Don't return a `T&&`](#Rf-return-ref-ref)
* [F.46: `int` is the return type for `main()`](#Rf-main)
* [F.47: Return `T&` from assignment operators.](#Rf-assignment-op)
* [F.50: Use a lambda when a function won't do (to capture local variables, or to write a local function)](#Rf-capture-vs-overload)
* [F.51: Where there is a choice, prefer default arguments over overloading](#Rf-default-args)
* [F.52: Prefer capturing by reference in lambdas that will be used locally, including passed to algorithms](#Rf-reference-capture)
* [F.53: Avoid capturing by reference in lambdas that will be used nonlocally, including returned, stored on the heap, or passed to another thread](#Rf-value-capture)
* [F.54: If you capture `this`, capture all variables explicitly (no default capture)](#Rf-this-capture)
* [F.50: Use a lambda when a function won't do (to capture local variables, or to write a local function)](#Rf-capture-vs-overload)
* [F.52: Prefer capturing by reference in lambdas that will be used locally, including passed to algorithms](#Rf-reference-capture)
* [F.53: Avoid capturing by reference in lambdas that will be used nonlocally, including returned, stored on the heap, or passed to another thread](#Rf-value-capture)

### <a name="Rf-package"></a>F.1: "Package" meaningful operations as carefully named functions


### <a name="Rf-conventional"></a>F.15: Prefer simple and conventional ways of passing information


* (Simple) ((Foundation)) Warn when a parameter being passed by value has a size greater than `4 * sizeof(int)`.
Suggest using a reference to `const` instead.
* (Simple) ((Foundation)) Warn when a `const` parameter being passed by reference has a size less than `3 * sizeof(int)`. Suggest passing by value instead.
* (Simple) ((Foundation)) Warn when a `const` parameter being passed by reference is `move`d.

### <a name="Rf-in"></a>F.16: For "in" parameters, pass cheaply-copied types by value and others by reference to `const`


* (Simple) ((Foundation)) Warn when a parameter being passed by value has a size greater than `4 * sizeof(int)`.
Suggest using a reference to `const` instead.
* (Simple) ((Foundation)) Warn when a `const` parameter being passed by reference has a size less than `3 * sizeof(int)`. Suggest passing by value instead.
* (Simple) ((Foundation)) Warn when a `const` parameter being passed by reference is `move`d.

### <a name="Rf-inout"></a>F.17: For "in-out" parameters, pass by reference to non-`const`


* (Moderate) ((Foundation)) Warn about functions with reference to non-`const` parameters that do *not* write to them.
* (Simple) ((Foundation)) Warn when a non-`const` parameter being passed by reference is `move`d.

### <a name="Rf-consume"></a>F.18: For "consume" parameters, pass by `X&&` and `std::move` the parameter


* Flag all `X&&` parameters (where `X` is not a template type parameter name) where the function body uses them without `std::move`.
* Flag access to moved-from objects.
* Don't conditionally move from objects

### <a name="Rf-forward"></a>F.19: For "forward" parameters, pass by `TP&&` and only `std::forward` the parameter


* Flag a function that takes a `TP&&` parameter (where `TP` is a template type parameter name) and does anything with it other than `std::forward`ing it exactly once on every static path.

### <a name="Rf-logical"></a>F.2: A function should perform a single logical operation


* Consider functions with more than one "out" parameter suspicious. Use return values instead, including `tuple` for multiple return values.
* Consider "large" functions that don't fit on one editor screen suspicious. Consider factoring such a function into smaller well-named suboperations.
* Consider functions with 7 or more parameters suspicious.

### <a name="Rf-out"></a>F.20: For "out" output values, prefer return values to output parameters


* Flag reference to non-`const` parameters that are not read before being written to and are a type that could be cheaply returned; they should be "out" return values.
* Flag returning a `const` value. To fix: Remove `const` to return a non-`const` value instead.

### <a name="Rf-out-multi"></a>F.21: To return multiple "out" values, prefer returning a tuple or struct


* Output parameters should be replaced by return values.
An output parameter is one that the function writes to, invokes a non-`const` member function, or passes on as a non-`const`.

### <a name="Rf-ptr"></a>F.22: Use `T*` or `owner<T*>` to designate a single object


* (Simple) ((Bounds)) Warn for any arithmetic operation on an expression of pointer type that results in a value of pointer type.

### <a name="Rf-nullptr"></a>F.23: Use a `not_null<T>` to indicate that "null" is not a valid value


* (Simple) Warn if a raw pointer is dereferenced without being tested against `nullptr` (or equivalent) within a function, suggest it is declared `not_null` instead.
* (Simple) Error if a raw pointer is sometimes dereferenced after first being tested against `nullptr` (or equivalent) within the function and sometimes is not.
* (Simple) Warn if a `not_null` pointer is tested against `nullptr` within a function.

### <a name="Rf-range"></a>F.24: Use a `span<T>` or a `span_p<T>` to designate a half-open sequence


(Complex) Warn where accesses to pointer parameters are bounded by other parameters that are integral types and suggest they could use `span` instead.

### <a name="Rf-string"></a>F.25: Use a `zstring` or a `not_null<zstring>` to designate a C-style string


(Simple) Warn if a function returns a locally-allocated raw pointer. Suggest using either `unique_ptr` or `shared_ptr` instead.

### <a name="Rf-unique_ptr"></a>F.26: Use a `unique_ptr<T>` to transfer ownership where a pointer is needed


(Simple) Warn if a function returns a locally-allocated raw pointer. Suggest using either `unique_ptr` or `shared_ptr` instead.

### <a name="Rf-shared_ptr"></a>F.27: Use a `shared_ptr<T>` to share ownership


(Not enforceable) This is a too complex pattern to reliably detect.

### <a name="Rf-single"></a>F.3: Keep functions short and simple


* Flag functions that do not "fit on a screen."
How big is a screen? Try 60 lines by 140 characters; that's roughly the maximum that's comfortable for a book page.
* Flag functions that are too complex. How complex is too complex?
You could use cyclomatic complexity. Try "more than 10 logical path through." Count a simple switch as one path.

### <a name="Rf-constexpr"></a>F.4: If a function may have to be evaluated at compile time, declare it `constexpr`


Impossible and unnecessary.
The compiler gives an error if a non-`constexpr` function is called where a constant is required.

### <a name="Rf-return-ptr"></a>F.42: Return a `T*` to indicate a position (only)


* Flag `delete`, `std::free()`, etc. applied to a plain `T*`.
Only owners should be deleted.
* Flag `new`, `malloc()`, etc. assigned to a plain `T*`.
Only owners should be responsible for deletion.

### <a name="Rf-dangle"></a>F.43: Never (directly or indirectly) return a pointer or a reference to a local object


* Compilers tend to catch return of reference to locals and could in many cases catch return of pointers to locals.
* Static analysis can catch many common patterns of the use of pointers indicating positions (thus eliminating dangling pointers)

### <a name="Rf-return-ref"></a>F.44: Return a `T&` when copy is undesirable and "returning no object" isn't needed


Flag functions where no `return` expression could yield `nullptr`

### <a name="Rf-return-ref-ref"></a>F.45: Don't return a `T&&`


Flag any use of `&&` as a return type, except in `std::move` and `std::forward`.

### <a name="Rf-main"></a>F.46: `int` is the return type for `main()`


* The compiler should do it
* If the compiler doesn't do it, let tools flag it

### <a name="Rf-assignment-op"></a>F.47: Return `T&` from assignment operators


This should be enforced by tooling by checking the return type (and return
value) of any assignment operator.

### <a name="Rf-inline"></a>F.5: If a function is very small and time-critical, declare it `inline`


Flag `inline` functions that are more than three statements and could have been declared out of line (such as class member functions).

### <a name="Rf-capture-vs-overload"></a>F.50: Use a lambda when a function won't do (to capture local variables, or to write a local function)


* Warn on use of a named non-generic lambda (e.g., `auto x = [](int i){ /*...*/; };`) that captures nothing and appears at global scope. Write an ordinary function instead.

### <a name="Rf-default-args"></a>F.51: Where there is a choice, prefer default arguments over overloading


???

### <a name="Rf-reference-capture"></a>F.52: Prefer capturing by reference in lambdas that will be used locally, including passed to algorithms


???

### <a name="Rf-value-capture"></a>F.53: Avoid capturing by reference in lambdas that will be used nonlocally, including returned, stored on the heap, or passed to another thread


* (Simple) Warn when capture-list contains a reference to a locally declared variable
* (Complex) Flag when capture-list contains a reference to a locally declared variable and the lambda is passed to a non-`const` and non-local context

### <a name="Rf-this-capture"></a>F.54: If you capture `this`, capture all variables explicitly (no default capture)


* Flag any lambda capture-list that specifies a default capture and also captures `this` (whether explicitly or via default capture)

### <a name="Rf-noexcept"></a>F.6: If your function may not throw, declare it `noexcept`


* Flag functions that are not `noexcept`, yet cannot throw.
* Flag throwing `swap`, `move`, destructors, and default constructors.

### <a name="Rf-ptr-ref"></a>F.60: Prefer `T*` over `T&` when "no argument" is a valid option


* Flag ???

### <a name="Rf-smart"></a>F.7: For general use, take `T*` or `T&` arguments rather than smart pointers


Flag a parameter of a smart pointer type (a type that overloads `operator->` or `operator*`) for which the ownership semantics are not used;
that is

* copyable but never copied/moved from or movable but never moved
* and that is never modified or passed along to another function that could do so.

### <a name="Rf-pure"></a>F.8: Prefer pure functions


Not possible.

### GSL
* [GSL.view: Views](#SS-views)
* [GSL.assert: Assertions](#SS-assertions)
* [GSL.util: Utilities](#SS-utilities)
* [GSL.concept: Concepts](#SS-gsl-concepts)



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### I
* [I.1: Make interfaces explicit](#Ri-explicit)
* [I.2: Avoid global variables](#Ri-global)
* [I.3: Avoid singletons](#Ri-singleton)
* [I.4: Make interfaces precisely and strongly typed](#Ri-typed)
* [I.5: State preconditions (if any)](#Ri-pre)
* [I.6: Prefer `Expects()` for expressing preconditions](#Ri-expects)
* [I.7: State postconditions](#Ri-post)
* [I.8: Prefer `Ensures()` for expressing postconditions](#Ri-ensures)
* [I.9: If an interface is a template, document its parameters using concepts](#Ri-concepts)
* [I.10: Use exceptions to signal a failure to perform a required task](#Ri-except)
* [I.11: Never transfer ownership by a raw pointer (`T*`)](#Ri-raw)
* [I.12: Declare a pointer that must not be null as `not_null`](#Ri-nullptr)
* [I.13: Do not pass an array as a single pointer](#Ri-array)
* [I.22: Avoid complex initialization of global objects](#Ri-global-init)
* [I.23: Keep the number of function arguments low](#Ri-nargs)
* [I.24: Avoid adjacent unrelated parameters of the same type](#Ri-unrelated)
* [I.25: Prefer abstract classes as interfaces to class hierarchies](#Ri-abstract)
* [I.26: If you want a cross-compiler ABI, use a C-style subset](#Ri-abi)

### <a name="Ri-explicit"></a>I.1: Make interfaces explicit


* (Simple) A function should not make control-flow decisions based on the values of variables declared at namespace scope.
* (Simple) A function should not write to variables declared at namespace scope.

### <a name="Ri-except"></a>I.10: Use exceptions to signal a failure to perform a required task


* (Not enforceable) This is a philosophical guideline that is infeasible to check directly.
* Look for `errno`.

### <a name="Ri-raw"></a>I.11: Never transfer ownership by a raw pointer (`T*`)


* (Simple) Warn on `delete` of a raw pointer that is not an `owner`.
* (Simple) Warn on failure to either `reset` or explicitly `delete` an `owner` pointer on every code path.
* (Simple) Warn if the return value of `new` or a function call with return value of pointer type is assigned to a raw pointer.

### <a name="Ri-nullptr"></a>I.12: Declare a pointer that must not be null as `not_null`


* (Simple) ((Foundation)) If a function checks a pointer parameter against `nullptr` before access, on all control-flow paths, then warn it should be declared `not_null`.
* (Complex) If a function with pointer return value ensures it is not `nullptr` on all return paths, then warn the return type should be declared `not_null`.

### <a name="Ri-array"></a>I.13: Do not pass an array as a single pointer


* (Simple) ((Bounds)) Warn for any expression that would rely on implicit conversion of an array type to a pointer type. Allow exception for zstring/czstring pointer types.
* (Simple) ((Bounds)) Warn for any arithmetic operation on an expression of pointer type that results in a value of pointer type. Allow exception for zstring/czstring pointer types.



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Ri-global-init"></a>I.22: Avoid complex initialization of global objects


* Flag initializers of globals that call non-`constexpr` functions
* Flag initializers of globals that access `extern` objects

### <a name="Ri-nargs"></a>I.23: Keep the number of function arguments low


* Warn when a function declares two iterators (including pointers) of the same type instead of a range or a view.
* (Not enforceable) This is a philosophical guideline that is infeasible to check directly.

### <a name="Ri-unrelated"></a>I.24: Avoid adjacent unrelated parameters of the same type


(Simple) Warn if two consecutive parameters share the same type.

### <a name="Ri-abstract"></a>I.25: Prefer abstract classes as interfaces to class hierarchies


(Simple) Warn if a pointer to a class `C` is assigned to a pointer to a base of `C` and the base class contains data members.

### <a name="Ri-abi"></a>I.26: If you want a cross-compiler ABI, use a C-style subset


(Not enforceable) It is difficult to reliably identify where an interface forms part of an ABI.

### <a name="Ri-singleton"></a>I.3: Avoid singletons


Very hard in general.

* Look for classes with names that include `singleton`.
* Look for classes for which only a single object is created (by counting objects or by examining constructors).
* If a class X has a public static function that contains a function-local static of the class' type X and returns a pointer or reference to it, ban that.

### <a name="Ri-typed"></a>I.4: Make interfaces precisely and strongly typed


* (Simple) Report the use of `void*` as a parameter or return type.
* (Hard to do well) Look for member functions with many built-in type arguments.

### <a name="Ri-pre"></a>I.5: State preconditions (if any)


(Not enforceable)

**See also**: The rules for passing pointers. ???

### <a name="Ri-expects"></a>I.6: Prefer `Expects()` for expressing preconditions


(Not enforceable) Finding the variety of ways preconditions can be asserted is not feasible. Warning about those that can be easily identified (`assert()`) has questionable value in the absence of a language facility.

### <a name="Ri-post"></a>I.7: State postconditions


(Not enforceable) This is a philosophical guideline that is infeasible to check
directly in the general case. Domain specific checkers (like lock-holding
checkers) exist for many toolchains.

### <a name="Ri-ensures"></a>I.8: Prefer `Ensures()` for expressing postconditions


(Not enforceable) Finding the variety of ways postconditions can be asserted is not feasible. Warning about those that can be easily identified (`assert()`) has questionable value in the absence of a language facility.

### <a name="Ri-concepts"></a>I.9: If an interface is a template, document its parameters using concepts


(Not yet enforceable) A language facility is under specification. When the language facility is available, warn if any non-variadic template parameter is not constrained by a concept (in its declaration or mentioned in a `requires` clause).

### In
* [In.target: Target readership](#SS-readers)
* [In.aims: Aims](#SS-aims)
* [In.not: Non-aims](#SS-non)
* [In.force: Enforcement](#SS-force)
* [In.struct: The structure of this document](#SS-struct)
* [In.sec: Major sections](#SS-sec)



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### NL
* [NL.1: Don't say in comments what can be clearly stated in code](#Rl-comments)
* [NL.2: State intent in comments](#Rl-comments-intent)
* [NL.3: Keep comments crisp](#Rl-comments-crisp)
* [NL.4: Maintain a consistent indentation style](#Rl-indent)
* [NL.5: Don't encode type information in names](#Rl-name-type)
* [NL.7: Make the length of a name roughly proportional to the length of its scope](#Rl-name-length)
* [NL.8: Use a consistent naming style](#Rl-name)
* [NL.9: Use `ALL_CAPS` for macro names only](#Rl-all-caps)
* [NL.10: Avoid CamelCase](#Rl-camel)
* [NL.15: Use spaces sparingly](#Rl-space)
* [NL.16: Use a conventional class member declaration order](#Rl-order)
* [NL.17: Use K&R-derived layout](#Rl-knr)
* [NL.18: Use C++-style declarator layout](#Rl-ptr)
* [NL.19: Avoid names that are easily misread](#Rl-misread)
* [NL.20: Don't place two statements on the same line](#Rl-stmt)
* [NL.21: Declare one name (only) per declaration](#Rl-dcl)
* [NL.25: Don't use `void` as an argument type](#Rl-void)
* [NL.26: Use conventional `const` notation](#Rl-const)

### <a name="Rl-comments"></a>NL.1: Don't say in comments what can be clearly stated in code


Build an AI program that interprets colloquial English text and see if what is said could be better expressed in C++.

### <a name="Rl-camel"></a>NL.10: Avoid CamelCase


Impossible.

### <a name="Rl-space"></a>NL.15: Use spaces sparingly


Flag departures from the suggested order. There will be a lot of old code that doesn't follow this rule.

### <a name="Rl-order"></a>NL.16: Use a conventional class member declaration order


Flag departures from the suggested order. There will be a lot of old code that doesn't follow this rule.

### <a name="Rl-knr"></a>NL.17: Use K&R-derived layout


If you want enforcement, use an IDE to reformat.

### <a name="Rl-ptr"></a>NL.18: Use C++-style declarator layout


Impossible in the face of history.


### <a name="Rl-misread"></a>NL.19: Avoid names that are easily misread


???

### <a name="Rl-comments-intent"></a>NL.2: State intent in comments


not possible.

### <a name="Rl-stmt"></a>NL.20: Don't place two statements on the same line


Easy.

### <a name="Rl-dcl"></a>NL.21: Declare one name (only) per declaration


Flag `const` used as a suffix for a type.

### <a name="Rl-void"></a>NL.25: Don't use `void` as an argument type


Flag `const` used as a suffix for a type.

### <a name="Rl-const"></a>NL.26: Use conventional `const` notation


Flag `const` used as a suffix for a type.

### <a name="Rl-comments-crisp"></a>NL.3: Keep comments crisp


not possible.

### <a name="Rl-indent"></a>NL.4: Maintain a consistent indentation style


Use a tool.



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Rl-name-length"></a>NL.7: Make the length of a name roughly proportional to the length of its scope


???

### <a name="Rl-name"></a>NL.8: Use a consistent naming style


Would be possible except for the use of libraries with varying conventions.

### <a name="Rl-all-caps"></a>NL.9: Use `ALL_CAPS` for macro names only


* Flag macros with lower-case letters
* Flag `ALL_CAPS` non-macro names

### NR
* [NR.1: Don't: All declarations should be at the top of a function](#Rnr-top)
* [NR.2: Don't: Have only a single `return`-statement in a function](#Rnr-single-return)
* [NR.3: Don't: Don't use exceptions](#Rnr-no-exceptions)
* [NR.4: Don't: Place each class declaration in its own source file](#Rnr-lots-of-files)
* [NR.5: Don't: Don't do substantive work in a constructor; instead use two-phase initialization](#Rnr-two-phase-init)
* [NR.6: Don't: Place all cleanup actions at the end of a function and `goto exit`](#Rnr-goto-exit)
* [NR.7: Don't: Make all data members `protected`](#Rnr-protected-data)

### <a name="Rnr-top"></a>NR.1: Don't: All declarations should be at the top of a function


Issue a diagnostic for any use of `reinterpret_cast`. To fix: Consider using a `variant` instead.

### <a name="Rnr-single-return"></a>NR.2: Don't: Have only a single `return`-statement in a function


Issue a diagnostic for any use of `reinterpret_cast`. To fix: Consider using a `variant` instead.

### <a name="Rnr-no-exceptions"></a>NR.3: Don't: Don't use exceptions


Issue a diagnostic for any use of `reinterpret_cast`. To fix: Consider using a `variant` instead.

### <a name="Rnr-lots-of-files"></a>NR.4: Don't: Place each class declaration in its own source file


Issue a diagnostic for any use of `reinterpret_cast`. To fix: Consider using a `variant` instead.

### <a name="Rnr-two-phase-init"></a>NR.5: Don't: Don't do substantive work in a constructor; instead use two-phase initialization


Issue a diagnostic for any use of `reinterpret_cast`. To fix: Consider using a `variant` instead.

### <a name="Rnr-goto-exit"></a>NR.6: Don't: Place all cleanup actions at the end of a function and `goto exit`


Issue a diagnostic for any use of `reinterpret_cast`. To fix: Consider using a `variant` instead.

### <a name="Rnr-protected-data"></a>NR.7: Don't: Make all data members `protected`


Issue a diagnostic for any use of `reinterpret_cast`. To fix: Consider using a `variant` instead.

### P
* [P.1: Express ideas directly in code](#Rp-direct)
* [P.2: Write in ISO Standard C++](#Rp-Cplusplus)
* [P.3: Express intent](#Rp-what)
* [P.4: Ideally, a program should be statically type safe](#Rp-typesafe)
* [P.5: Prefer compile-time checking to run-time checking](#Rp-compile-time)
* [P.6: What cannot be checked at compile time should be checkable at run time](#Rp-run-time)
* [P.7: Catch run-time errors early](#Rp-early)
* [P.8: Don't leak any resources](#Rp-leak)
* [P.9: Don't waste time or space](#Rp-waste)
* [P.10: Prefer immutable data to mutable data](#Rp-mutable)
* [P.11: Encapsulate messy constructs, rather than spreading through the code](#Rp-library)

### <a name="Rp-direct"></a>P.1: Express ideas directly in code


Very hard in general.

* use `const` consistently (check if member functions modify their object; check if functions modify arguments passed by pointer or reference)
* flag uses of casts (casts neuter the type system)
* detect code that mimics the standard library (hard)

### <a name="Rp-mutable"></a>P.10: Prefer immutable data to mutable data


* Look for "messy code" such as complex pointer manipulation and casting outside the implementation of abstractions.


### <a name="Rp-library"></a>P.11: Encapsulate messy constructs, rather than spreading through the code


* Look for "messy code" such as complex pointer manipulation and casting outside the implementation of abstractions.


### <a name="Rp-Cplusplus"></a>P.2: Write in ISO Standard C++


Use an up-to-date C++ compiler (currently C++11 or C++14) with a set of options that do not accept extensions.

### <a name="Rp-what"></a>P.3: Express intent


Look for common patterns for which there are better alternatives

* simple `for` loops vs. range-`for` loops
* `f(T*, int)` interfaces vs. `f(span<T>)` interfaces
* loop variables in too large a scope
* naked `new` and `delete`
* functions with many parameters of built-in types

There is a huge scope for cleverness and semi-automated program transformation.

### <a name="Rp-typesafe"></a>P.4: Ideally, a program should be statically type safe


We can ban, restrain, or detect the individual problem categories separately, as required and feasible for individual programs.
Always suggest an alternative.
For example:

* unions -- use `variant` (in C++17)
* casts -- minimize their use; templates can help
* array decay -- use `span` (from the GSL)
* range errors -- use `span`
* narrowing conversions -- minimize their use and use `narrow` or `narrow_cast` (from the GSL) where they are necessary

### <a name="Rp-compile-time"></a>P.5: Prefer compile-time checking to run-time checking


* Look for pointer arguments.
* Look for run-time checks for range violations.

### <a name="Rp-run-time"></a>P.6: What cannot be checked at compile time should be checkable at run time


* Flag (pointer, count)-style interfaces (this will flag a lot of examples that can't be fixed for compatibility reasons)
* ???

### <a name="Rp-early"></a>P.7: Catch run-time errors early


* Look at pointers and arrays: Do range-checking early and not repeatedly
* Look at conversions: Eliminate or mark narrowing conversions
* Look for unchecked values coming from input
* Look for structured data (objects of classes with invariants) being converted into strings
* ???

### <a name="Rp-leak"></a>P.8: Don't leak any resources


* Look at pointers: Classify them into non-owners (the default) and owners.
Where feasible, replace owners with standard-library resource handles (as in the example above).
### <a name="Rp-waste"></a>P.9: Don't waste time or space


Many more specific rules aim at the overall goals of simplicity and elimination of gratuitous waste.

### Per
* [Per.1: Don't optimize without reason](#Rper-reason)
* [Per.2: Don't optimize prematurely](#Rper-Knuth)
* [Per.3: Don't optimize something that's not performance critical](#Rper-critical)
* [Per.4: Don't assume that complicated code is necessarily faster than simple code](#Rper-simple)
* [Per.5: Don't assume that low-level code is necessarily faster than high-level code](#Rper-low)
* [Per.6: Don't make claims about performance without measurements](#Rper-measure)
* [Per.7: Design to enable optimization](#Rper-efficiency)
* [Per.10: Rely on the static type system](#Rper-type)
* [Per.11: Move computation from run time to compile time](#Rper-Comp)
* [Per.12: Eliminate redundant aliases](#Rper-alias)
* [Per.13: Eliminate redundant indirections](#Rper-indirect)
* [Per.14: Minimize the number of allocations and deallocations](#Rper-alloc)
* [Per.15: Do not allocate on a critical branch](#Rper-alloc0)
* [Per.16: Use compact data structures](#Rper-compact)
* [Per.17: Declare the most used member of a time-critical struct first](#Rper-struct)
* [Per.18: Space is time](#Rper-space)
* [Per.19: Access memory predictably](#Rper-access)
* [Per.30: Avoid context switches on the critical path](#Rper-context)

### <a name="Rper-reason"></a>Per.1: Don't optimize without reason


Tricky.
Maybe looking for `void*` function arguments will find examples of interfaces that hinder later optimization.

### <a name="Rper-type"></a>Per.10: Rely on the static type system


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-Comp"></a>Per.11: Move computation from run time to compile time


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-alias"></a>Per.12: Eliminate redundant aliases


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-indirect"></a>Per.13: Eliminate redundant indirections


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-alloc"></a>Per.14: Minimize the number of allocations and deallocations


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-alloc0"></a>Per.15: Do not allocate on a critical branch


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-compact"></a>Per.16: Use compact data structures


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-struct"></a>Per.17: Declare the most used member of a time-critical struct first


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-space"></a>Per.18: Space is time


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-access"></a>Per.19: Access memory predictably


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-Knuth"></a>Per.2: Don't optimize prematurely


Tricky.
Maybe looking for `void*` function arguments will find examples of interfaces that hinder later optimization.

### <a name="Rper-critical"></a>Per.3: Don't optimize something that's not performance critical


Tricky.
Maybe looking for `void*` function arguments will find examples of interfaces that hinder later optimization.

### <a name="Rper-context"></a>Per.30: Avoid context switches on the critical path


Some is possible, do at least something.
There are commercial and open-source tools that try to address this problem, but static tools often have many false positives and run-time tools often have a significant cost.
We hope for better tools.

Help the tools:

* less global data
* fewer `static` variables
* more use of stack memory (and don't pass pointers around too much)
* more immutable data (literals, `constexpr`, and `const`)

### <a name="Rper-simple"></a>Per.4: Don't assume that complicated code is necessarily faster than simple code


Tricky.
Maybe looking for `void*` function arguments will find examples of interfaces that hinder later optimization.

### <a name="Rper-low"></a>Per.5: Don't assume that low-level code is necessarily faster than high-level code


Tricky.
Maybe looking for `void*` function arguments will find examples of interfaces that hinder later optimization.

### <a name="Rper-measure"></a>Per.6: Don't make claims about performance without measurements


Tricky.
Maybe looking for `void*` function arguments will find examples of interfaces that hinder later optimization.

### <a name="Rper-efficiency"></a>Per.7: Design to enable optimization


Tricky.
Maybe looking for `void*` function arguments will find examples of interfaces that hinder later optimization.

### Pro
* [Pro.type: Type safety](#SS-type)
* [Pro.bounds: Bounds safety](#SS-bounds)
* [Pro.lifetime: Lifetime safety](#SS-lifetime)



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### R
  * [R.1: Manage resources automatically using resource handles and RAII (Resource Acquisition Is Initialization)](#Rr-raii)
  * [R.2: In interfaces, use raw pointers to denote individual objects (only)](#Rr-use-ptr)
  * [R.3: A raw pointer (a `T*`) is non-owning](#Rr-ptr)
  * [R.4: A raw reference (a `T&`) is non-owning](#Rr-ref)
  * [R.5: Prefer scoped objects](#Rr-scoped)
  * [R.6: Avoid non-`const` global variables](#Rr-global)
  * [R.10: Avoid `malloc()` and `free()`](#Rr-mallocfree)
  * [R.11: Avoid calling `new` and `delete` explicitly](#Rr-newdelete)
  * [R.12: Immediately give the result of an explicit resource allocation to a manager object](#Rr-immediate-alloc)
  * [R.13: Perform at most one explicit resource allocation in a single expression statement](#Rr-single-alloc)
  * [R.14: ??? array vs. pointer parameter](#Rr-ap)
  * [R.15: Always overload matched allocation/deallocation pairs](#Rr-pair)
  * [R.20: Use `unique_ptr` or `shared_ptr` to represent ownership](#Rr-owner)
  * [R.21: Prefer `unique_ptr` over `shared_ptr` unless you need to share ownership](#Rr-unique)
  * [R.22: Use `make_shared()` to make `shared_ptr`s](#Rr-make_shared)
  * [R.23: Use `make_unique()` to make `unique_ptr`s](#Rr-make_unique)
  * [R.24: Use `std::weak_ptr` to break cycles of `shared_ptr`s](#Rr-weak_ptr)
  * [R.30: Take smart pointers as parameters only to explicitly express lifetime semantics](#Rr-smartptrparam)
  * [R.31: If you have non-`std` smart pointers, follow the basic pattern from `std`](#Rr-smart)
  * [R.32: Take a `unique_ptr<widget>` parameter to express that a function assumes ownership of a `widget`](#Rr-uniqueptrparam)
  * [R.33: Take a `unique_ptr<widget>&` parameter to express that a function reseats the `widget`](#Rr-reseat)
  * [R.34: Take a `shared_ptr<widget>` parameter to express that a function is part owner](#Rr-sharedptrparam-owner)
  * [R.35: Take a `shared_ptr<widget>&` parameter to express that a function might reseat the shared pointer](#Rr-sharedptrparam)
  * [R.36: Take a `const shared_ptr<widget>&` parameter to express that it might retain a reference count to the object ???](#Rr-sharedptrparam-const)
  * [R.37: Do not pass a pointer or reference obtained from an aliased smart pointer](#Rr-smartptrget)

### <a name="Rr-raii"></a>R.1: Manage resources automatically using resource handles and RAII (Resource Acquisition Is Initialization)


* Flag pointer arithmetic (including `++`) on a pointer that is not part of a container, view, or iterator.
This rule would generate a huge number of false positives if applied to an older code base.
* Flag array names passed as simple pointers

### <a name="Rr-mallocfree"></a>R.10: Avoid `malloc()` and `free()`


Flag explicit use of `malloc` and `free`.

### <a name="Rr-newdelete"></a>R.11: Avoid calling `new` and `delete` explicitly


(Simple) Warn on any explicit use of `new` and `delete`. Suggest using `make_unique` instead.

### <a name="Rr-immediate-alloc"></a>R.12: Immediately give the result of an explicit resource allocation to a manager object


* Flag explicit allocations used to initialize pointers (problem: how many direct resource allocations can we recognize?)

### <a name="Rr-single-alloc"></a>R.13: Perform at most one explicit resource allocation in a single expression statement


* Flag expressions with multiple explicit resource allocations (problem: how many direct resource allocations can we recognize?)

### <a name="Rr-ap"></a>R.14: ??? array vs. pointer parameter


Flag `[]` parameters.

### <a name="Rr-pair"></a>R.15: Always overload matched allocation/deallocation pairs


Flag incomplete pairs.

### <a name="Rr-use-ptr"></a>R.2: In interfaces, use raw pointers to denote individual objects (only)


* Flag pointer arithmetic (including `++`) on a pointer that is not part of a container, view, or iterator.
This rule would generate a huge number of false positives if applied to an older code base.
* Flag array names passed as simple pointers

### <a name="Rr-owner"></a>R.20: Use `unique_ptr` or `shared_ptr` to represent ownership


(Simple) Warn if the return value of `new` or a function call with return value of pointer type is assigned to a raw pointer.

### <a name="Rr-unique"></a>R.21: Prefer `unique_ptr` over `shared_ptr` unless you need to share ownership


(Simple) Warn if a function uses a `Shared_ptr` with an object allocated within the function, but never returns the `Shared_ptr` or passes it to a function requiring a `Shared_ptr&`. Suggest using `unique_ptr` instead.

### <a name="Rr-make_shared"></a>R.22: Use `make_shared()` to make `shared_ptr`s


(Simple) Warn if a `shared_ptr` is constructed from the result of `new` rather than `make_shared`.

### <a name="Rr-make_unique"></a>R.23: Use `make_unique()` to make `unique_ptr`s


(Simple) Warn if a `unique_ptr` is constructed from the result of `new` rather than `make_unique`.

### <a name="Rr-weak_ptr"></a>R.24: Use `std::weak_ptr` to break cycles of `shared_ptr`s


??? probably impossible. If we could statically detect cycles, we wouldn't need `weak_ptr`

### <a name="Rr-ptr"></a>R.3: A raw pointer (a `T*`) is non-owning


* (Simple) Warn on `delete` of a raw pointer that is not an `owner<T>`.
* (Moderate) Warn on failure to either `reset` or explicitly `delete` an `owner<T>` pointer on every code path.
* (Simple) Warn if the return value of `new` or a function call with return value of pointer type is assigned to a raw pointer.
* (Simple) Warn if a function returns an object that was allocated within the function but has a move constructor.
Suggest considering returning it by value instead.

### <a name="Rr-smartptrparam"></a>R.30: Take smart pointers as parameters only to explicitly express lifetime semantics


* (Simple) Warn if a function takes a parameter of a smart pointer type (that overloads `operator->` or `operator*`) that is copyable but the function only calls any of: `operator*`, `operator->` or `get()`.
Suggest using a `T*` or `T&` instead.
* Flag a parameter of a smart pointer type (a type that overloads `operator->` or `operator*`) that is copyable/movable but never copied/moved from in the function body, and that is never modified, and that is not passed along to another function that could do so. That means the ownership semantics are not used.
Suggest using a `T*` or `T&` instead.

### <a name="Rr-smart"></a>R.31: If you have non-`std` smart pointers, follow the basic pattern from `std`


* (Simple) Warn if a function takes a `Unique_ptr<T>` parameter by lvalue reference and does not either assign to it or call `reset()` on it on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Unique_ptr<T>` parameter by reference to `const`. Suggest taking a `const T*` or `const T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Unique_ptr<T>` parameter by rvalue reference. Suggest using pass by value instead.

### <a name="Rr-uniqueptrparam"></a>R.32: Take a `unique_ptr<widget>` parameter to express that a function assumes ownership of a `widget`


* (Simple) Warn if a function takes a `Unique_ptr<T>` parameter by lvalue reference and does not either assign to it or call `reset()` on it on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Unique_ptr<T>` parameter by reference to `const`. Suggest taking a `const T*` or `const T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Unique_ptr<T>` parameter by rvalue reference. Suggest using pass by value instead.

### <a name="Rr-reseat"></a>R.33: Take a `unique_ptr<widget>&` parameter to express that a function reseats the`widget`


* (Simple) Warn if a function takes a `Unique_ptr<T>` parameter by lvalue reference and does not either assign to it or call `reset()` on it on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Unique_ptr<T>` parameter by reference to `const`. Suggest taking a `const T*` or `const T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Unique_ptr<T>` parameter by rvalue reference. Suggest using pass by value instead.

### <a name="Rr-sharedptrparam-owner"></a>R.34: Take a `shared_ptr<widget>` parameter to express that a function is part owner


* (Simple) Warn if a function takes a `Shared_ptr<T>` parameter by lvalue reference and does not either assign to it or call `reset()` on it on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Shared_ptr<T>` by value or by reference to `const` and does not copy or move it to another `Shared_ptr` on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Shared_ptr<T>` by rvalue reference. Suggesting taking it by value instead.

### <a name="Rr-sharedptrparam"></a>R.35: Take a `shared_ptr<widget>&` parameter to express that a function might reseat the shared pointer


* (Simple) Warn if a function takes a `Shared_ptr<T>` parameter by lvalue reference and does not either assign to it or call `reset()` on it on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Shared_ptr<T>` by value or by reference to `const` and does not copy or move it to another `Shared_ptr` on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Shared_ptr<T>` by rvalue reference. Suggesting taking it by value instead.

### <a name="Rr-sharedptrparam-const"></a>R.36: Take a `const shared_ptr<widget>&` parameter to express that it might retain a reference count to the object ???


* (Simple) Warn if a function takes a `Shared_ptr<T>` parameter by lvalue reference and does not either assign to it or call `reset()` on it on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Shared_ptr<T>` by value or by reference to `const` and does not copy or move it to another `Shared_ptr` on at least one code path. Suggest taking a `T*` or `T&` instead.
* (Simple) ((Foundation)) Warn if a function takes a `Shared_ptr<T>` by rvalue reference. Suggesting taking it by value instead.

### <a name="Rr-smartptrget"></a>R.37: Do not pass a pointer or reference obtained from an aliased smart pointer


* (Simple) Warn if a pointer or reference obtained from a smart pointer variable (`Unique_ptr` or `Shared_ptr`) that is nonlocal, or that is local but potentially aliased, is used in a function call. If the smart pointer is a `Shared_ptr` then suggest taking a local copy of the smart pointer and obtain a pointer or reference from that instead.

### <a name="Rr-ref"></a>R.4: A raw reference (a `T&`) is non-owning


### <a name="Rr-scoped"></a>R.5: Don't heap-allocate unnecessarily


* (Moderate) Warn if an object is allocated and then deallocated on all paths within a function. Suggest it should be a local `auto` stack object instead.
* (Simple) Warn if a local `Unique_ptr` or `Shared_ptr` is not moved, copied, reassigned or `reset` before its lifetime ends.

### <a name="Rr-global"></a>R.6: Avoid non-`const` global variables


(??? NM: Obviously we can warn about non-`const` statics ... do we want to?)

### RF
* [RF.rules: Coding rules](#SS-rules)
* [RF.books: Books with coding guidelines](#SS-books)
* [RF.C++: C++ Programming (C++11/C++14)](#SS-Cplusplus)
* [RF.web: Websites](#SS-web)
* [RF.man: Manuals](#SS-man)



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### RS
* [RS.video: Videos about "modern C++"](#SS-vid)



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### SF
* [SF.1: Use a `.cpp` suffix for code files and `.h` for interface files if your project doesn't already follow another convention](#Rs-file-suffix)
* [SF.2: A `.h` file may not contain object definitions or non-inline function definitions](#Rs-inline)
* [SF.3: Use `.h` files for all declarations used in multiple source files](#Rs-declaration-header)
* [SF.4: Include `.h` files before other declarations in a file](#Rs-include-order)
* [SF.5: A `.cpp` file must include the `.h` file(s) that defines its interface](#Rs-consistency)
* [SF.6: Use `using`-directives for transition, for foundation libraries (such as `std`), or within a local scope](#Rs-using)
* [SF.7: Don't put a `using`-directive in a header file](#Rs-using-directive)
* [SF.8: Use `#include` guards for all `.h` files](#Rs-guards)
* [SF.9: Avoid cyclic dependencies among source files](#Rs-cycles)
* [SF.20: Use `namespace`s to express logical structure](#Rs-namespace)
* [SF.21: Don't use an unnamed (anonymous) namespace in a header](#Rs-unnamed)
* [SF.22: Use an unnamed (anonymous) namespace for all internal/nonexported entities](#Rs-unnamed2)

### <a name="Rs-file-suffix"></a>SF.1: Use a `.cpp` suffix for code files and `.h` for interface files if your project doesn't already follow another convention


* Flag non-conventional file names.
* Check that `.h` and `.cpp` (and equivalents) follow the rules below.

### <a name="Rs-inline"></a>SF.2: A `.h` file may not contain object definitions or non-inline function definitions


Check the positive list above.

### <a name="Rs-namespace"></a>SF.20: Use `namespace`s to express logical structure


???

### <a name="Rs-unnamed"></a>SF.21: Don't use an unnamed (anonymous) namespace in a header


* Flag any use of an anonymous namespace in a header file.

### <a name="Rs-unnamed2"></a>SF.22: Use an unnamed (anonymous) namespace for all internal/nonexported entities


* ???

### <a name="Rs-declaration-header"></a>SF.3: Use `.h` files for all declarations used in multiple source files


* Flag declarations of entities in other source files not placed in a `.h`.

### <a name="Rs-include-order"></a>SF.4: Include `.h` files before other declarations in a file


Easy.

### <a name="Rs-consistency"></a>SF.5: A `.cpp` file must include the `.h` file(s) that defines its interface


???

### <a name="Rs-using"></a>SF.6: Use `using`-directives for transition, for foundation libraries (such as `std`), or within a local scope


???

### <a name="Rs-using-directive"></a>SF.7: Don't put a `using`-directive in a header file


???

### <a name="Rs-guards"></a>SF.8: Use `#include` guards for all `.h` files


### <a name="Rs-cycles"></a>SF.9: Avoid cyclic dependencies among source files


Flag all cycles.

### SL
* [SL.con: Containers](#SS-con)
* [SL.str: String](#SS-string)
* [SL.io: Iostream](#SS-io)
* [SL.regex: Regex](#SS-regex)
* [SL.chrono: Time](#SS-chrono)
* [SL.C: The C standard library](#SS-clib)
* [SL.1: Use libraries wherever possible](#Rsl-lib)
* [SL.2: Prefer the standard library to other libraries](#Rsl-sl)
* [SL.con.1: Prefer using STL `array` or `vector` instead of a C array](#Rsl-arrays)
* [SL.con.2: Prefer using STL `vector` by default unless you have a reason to use a different container](#Rsl-vector)
* [SL.io.1: Use character-level input only when you have to](#Rio-low)
* [SL.io.2: When reading, always consider ill-formed input](#Rio-validate)
* [SL.io.50: Avoid `endl`](#Rio-endl)

### <a name="Rsl-lib"></a>SL.1:  Use libraries wherever possible


* Flag declaration of a C array inside a function or class that also declares an STL container (to avoid excessive noisy warnings on legacy non-STL code). To fix: At least change the C array to a `std::array`.

### <a name="Rsl-sl"></a>SL.2: Prefer the standard library to other libraries


* Flag declaration of a C array inside a function or class that also declares an STL container (to avoid excessive noisy warnings on legacy non-STL code). To fix: At least change the C array to a `std::array`.



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### T
* [T.1: Use templates to raise the level of abstraction of code](#Rt-raise)
* [T.2: Use templates to express algorithms that apply to many argument types](#Rt-algo)
* [T.3: Use templates to express containers and ranges](#Rt-cont)
* [T.4: Use templates to express syntax tree manipulation](#Rt-expr)
* [T.5: Combine generic and OO techniques to amplify their strengths, not their costs](#Rt-generic-oo)
* [T.10: Specify concepts for all template arguments](#Rt-concepts)
* [T.11: Whenever possible use standard concepts](#Rt-std-concepts)
* [T.12: Prefer concept names over `auto` for local variables](#Rt-auto)
* [T.13: Prefer the shorthand notation for simple, single-type argument concepts](#Rt-shorthand)
* [T.20: Avoid "concepts" without meaningful semantics](#Rt-low)
* [T.21: Require a complete set of operations for a concept](#Rt-complete)
* [T.22: Specify axioms for concepts](#Rt-axiom)
* [T.23: Differentiate a refined concept from its more general case by adding new use patterns](#Rt-refine)
* [T.24: Use tag classes or traits to differentiate concepts that differ only in semantics](#Rt-tag)
* [T.25: Avoid complementary constraints](#Rt-not)
* [T.26: Prefer to define concepts in terms of use-patterns rather than simple syntax](#Rt-use)
* [T.30: Use concept negation (`!C<T>`) sparingly to express a minor difference](#Rt-not)
* [T.31: Use concept disjunction (`C1<T> || C2<T>`) sparingly to express alternatives](#Rt-or)
* [T.40: Use function objects to pass operations to algorithms](#Rt-fo)
* [T.41: Require only essential properties in a template's concepts](#Rt-essential)
* [T.42: Use template aliases to simplify notation and hide implementation details](#Rt-alias)
* [T.43: Prefer `using` over `typedef` for defining aliases](#Rt-using)
* [T.44: Use function templates to deduce class template argument types (where feasible)](#Rt-deduce)
* [T.46: Require template arguments to be at least `Regular` or `SemiRegular`](#Rt-regular)
* [T.47: Avoid highly visible unconstrained templates with common names](#Rt-visible)
* [T.48: If your compiler does not support concepts, fake them with `enable_if`](#Rt-concept-def)
* [T.49: Where possible, avoid type-erasure](#Rt-erasure)
* [T.60: Minimize a template's context dependencies](#Rt-depend)
* [T.61: Do not over-parameterize members (SCARY)](#Rt-scary)
* [T.62: Place non-dependent class template members in a non-templated base class](#Rt-nondependent)
* [T.64: Use specialization to provide alternative implementations of class templates](#Rt-specialization)
* [T.65: Use tag dispatch to provide alternative implementations of functions](#Rt-tag-dispatch)
* [T.67: Use specialization to provide alternative implementations for irregular types](#Rt-specialization2)
* [T.68: Use `{}` rather than `()` within templates to avoid ambiguities](#Rt-cast)
* [T.69: Inside a template, don't make an unqualified nonmember function call unless you intend it to be a customization point](#Rt-customization)
* [T.80: Do not naively templatize a class hierarchy](#Rt-hier)
* [T.81: Do not mix hierarchies and arrays](#Rt-array) // ??? somewhere in "hierarchies"
* [T.82: Linearize a hierarchy when virtual functions are undesirable](#Rt-linear)
* [T.83: Do not declare a member function template virtual](#Rt-virtual)
* [T.84: Use a non-template core implementation to provide an ABI-stable interface](#Rt-abi)
* [T.??: ????](#Rt-???)
* [T.100: Use variadic templates when you need a function that takes a variable number of arguments of a variety of types](#Rt-variadic)
* [T.101: ??? How to pass arguments to a variadic template ???](#Rt-variadic-pass)
* [T.102: ??? How to process arguments to a variadic template ???](#Rt-variadic-process)
* [T.103: Don't use variadic templates for homogeneous argument lists](#Rt-variadic-not)
* [T.??: ????](#Rt-???)
* [T.120: Use template metaprogramming only when you really need to](#Rt-metameta)
* [T.121: Use template metaprogramming primarily to emulate concepts](#Rt-emulate)
* [T.122: Use templates (usually template aliases) to compute types at compile time](#Rt-tmp)
* [T.123: Use `constexpr` functions to compute values at compile time](#Rt-fct)
* [T.124: Prefer to use standard-library TMP facilities](#Rt-std-tmp)
* [T.125: If you need to go beyond the standard-library TMP facilities, use an existing library](#Rt-lib)
* [T.??: ????](#Rt-???)
* [T.140: Name all operations with potential for reuse](#Rt-name)
* [T.141: Use an unnamed lambda if you need a simple function object in one place only](#Rt-lambda)
* [T.142: Use template variables to simplify notation](#Rt-var)
* [T.143: Don't write unintentionally nongeneric code](#Rt-nongeneric)
* [T.144: Don't specialize function templates](#Rt-specialize-function)
* [T.150: Check that a class matches a concept using `static_assert`](#Rt-check-class)
* [T.??: ????](#Rt-???)
* [T.10: Specify concepts for all template arguments](#Rt-concepts)
* [T.11: Whenever possible use standard concepts](#Rt-std-concepts)
* [T.12: Prefer concept names over `auto`](#Rt-auto)
* [T.13: Prefer the shorthand notation for simple, single-type argument concepts](#Rt-shorthand)
* [T.20: Avoid "concepts" without meaningful semantics](#Rt-low)
* [T.21: Require a complete set of operations for a concept](#Rt-complete)
* [T.22: Specify axioms for concepts](#Rt-axiom)
* [T.23: Differentiate a refined concept from its more general case by adding new use patterns](#Rt-refine)
* [T.24: Use tag classes or traits to differentiate concepts that differ only in semantics](#Rt-tag)
* [T.25: Avoid complimentary constraints](#Rt-not)
* [T.26: Prefer to define concepts in terms of use-patterns rather than simple syntax](#Rt-use)

### <a name="Rt-raise"></a>T.1: Use templates to raise the level of abstraction of code


* Flag algorithms with "overly simple" requirements, such as direct use of specific operators without a concept.
* Do not flag the definition of the "overly simple" concepts themselves; they may simply be building blocks for more useful concepts.

### <a name="Rt-concepts"></a>T.10: Specify concepts for all template arguments


Flag template type arguments without concepts

### <a name="Rt-variadic"></a>T.100: Use variadic templates when you need a function that takes a variable number of arguments of a variety of types


* Flag uses of `va_arg` in user code.

### <a name="Rt-variadic-pass"></a>T.101: ??? How to pass arguments to a variadic template ???


???

### <a name="Rt-variadic-process"></a>T.102: How to process arguments to a variadic template


???

### <a name="Rt-variadic-not"></a>T.103: Don't use variadic templates for homogeneous argument lists


???

### <a name="Rt-std-concepts"></a>T.11: Whenever possible use standard concepts


Hard.

* Look for unconstrained arguments, templates that use "unusual"/non-standard concepts, templates that use "homebrew" concepts without axioms.
* Develop a concept-discovery tool (e.g., see [an early experiment](http://www.stroustrup.com/sle2010_webversion.pdf)).

### <a name="Rt-auto"></a>T.12: Prefer concept names over `auto` for local variables


* ???

### <a name="Rt-metameta"></a>T.120: Use template metaprogramming only when you really need to


???

### <a name="Rt-emulate"></a>T.121: Use template metaprogramming primarily to emulate concepts


???

### <a name="Rt-tmp"></a>T.122: Use templates (usually template aliases) to compute types at compile time


???

### <a name="Rt-fct"></a>T.123: Use `constexpr` functions to compute values at compile time


* Flag template metaprograms yielding a value. These should be replaced with `constexpr` functions.

### <a name="Rt-std-tmp"></a>T.124: Prefer to use standard-library TMP facilities


???

### <a name="Rt-lib"></a>T.125: If you need to go beyond the standard-library TMP facilities, use an existing library


???

### <a name="Rt-shorthand"></a>T.13: Prefer the shorthand notation for simple, single-type argument concepts


* Not feasible in the short term when people convert from the `<typename T>` and `<class T`> notation.
* Later, flag declarations that first introduces a typename and then constrains it with a simple, single-type-argument concept.

### <a name="Rt-name"></a>T.140: Name all operations with potential for reuse


* (hard) flag similar lambdas
* ???

### <a name="Rt-lambda"></a>T.141: Use an unnamed lambda if you need a simple function object in one place only


* Look for identical and near identical lambdas (to be replaced with named functions or named lambdas).



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Rt-nongeneric"></a>T.143: Don't write unintentionally nongeneric code


* Flag comparison of iterators using `<` instead of `!=`.
* Flag `x.size() == 0` when `x.empty()` or `x.is_empty()` is available. Emptiness works for more containers than size(), because some containers don't know their size or are conceptually of unbounded size.
* Flag functions that take a pointer or reference to a more-derived type but only use functions declared in a base type.

### <a name="Rt-specialize-function"></a>T.144: Don't specialize function templates


* Flag all specializations of a function template. Overload instead.


### <a name="Rt-check-class"></a>T.150: Check that a class matches a concept using `static_assert`


Not feasible.

### <a name="Rt-algo"></a>T.2: Use templates to express algorithms that apply to many argument types


??? tough, probably needs a human

### <a name="Rt-low"></a>T.20: Avoid "concepts" without meaningful semantics


* Flag single-operation `concepts` when used outside the definition of other `concepts`.
* Flag uses of `enable_if` that appears to simulate single-operation `concepts`.


### <a name="ations"></a>T.21: Require a complete set of operations for a concept


* Flag classes the support "odd" subsets of a set of operators, e.g., `==` but not `!=` or `+` but not `-`.
Yes, `std::string` is "odd", but it's too late to change that.


### <a name="Rt-axiom"></a>T.22: Specify axioms for concepts


* Look for the word "axiom" in concept definition comments

### <a name="Rt-refine"></a>T.23: Differentiate a refined concept from its more general case by adding new use patterns.


* Flag a concept that has exactly the same requirements as another already-seen concept (neither is more refined).
### <a name="Rt-tag"></a>T.24: Use tag classes or traits to differentiate concepts that differ only in semantics.


* The compiler flags ambiguous use of identical concepts.
* Flag the definition of identical concepts.

### <a name="Rt-not"></a>T.25: Avoid complementary constraints


* Flag pairs of functions with `C<T>` and `!C<T>` constraints

### <a name="Rt-use"></a>T.26: Prefer to define concepts in terms of use-patterns rather than simple syntax


???

### <a name="Rt-cont"></a>T.3: Use templates to express containers and ranges


* Flag uses of `void*`s and casts outside low-level implementation code



Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $


Usage: ../../tools/extract_enforcements.bash GuidelineFile startline

Provide correct number of lines. Not end with a $
### <a name="Rt-expr"></a>T.4: Use templates to express syntax tree manipulation


See the reference to more specific rules.

### <a name="Rt-fo"></a>T.40: Use function objects to pass operations to algorithms


* Flag pointer to function template arguments.
* Flag pointers to functions passed as arguments to a template (risk of false positives).


### <a name="Rt-essential"></a>T.41: Require only essential properties in a template's concepts


???

### <a name="Rt-alias"></a>T.42: Use template aliases to simplify notation and hide implementation details


* Flag use of `typename` as a disambiguator outside `using` declarations.
* ???

### <a name="Rt-using"></a>T.43: Prefer `using` over `typedef` for defining aliases


* Flag uses of `typedef`. This will give a lot of "hits" :-(

### <a name="Rt-deduce"></a>T.44: Use function templates to deduce class template argument types (where feasible)


Flag uses where an explicitly specialized type exactly matches the types of the arguments used.

### <a name="Rt-regular"></a>T.46: Require template arguments to be at least `Regular` or `SemiRegular`


* Flag types that are not at least `SemiRegular`.

### <a name="Rt-visible"></a>T.47: Avoid highly visible unconstrained templates with common names


Flag templates defined in a namespace where concrete types are also defined (maybe not feasible until we have concepts).


### <a name="Rt-concept-def"></a>T.48: If your compiler does not support concepts, fake them with `enable_if`


???

### <a name="Rt-erasure"></a>T.49: Where possible, avoid type-erasure


???


### <a name="Rt-generic-oo"></a>T.5: Combine generic and OO techniques to amplify their strengths, not their costs


See the reference to more specific rules.

### <a name="Rt-depend"></a>T.60: Minimize a template's context dependencies


??? Tricky

### <a name="Rt-scary"></a>T.61: Do not over-parameterize members (SCARY)


* Flag member types that do not depend on every template argument
* Flag member functions that do not depend on every template argument

### <a name="Rt-nondependent"></a>T.62: Place non-dependent class template members in a non-templated base class


* Flag ???

### <a name="Rt-specialization"></a>T.64: Use specialization to provide alternative implementations of class templates


???

### <a name="Rt-tag-dispatch"></a>T.65: Use tag dispatch to provide alternative implementations of a function


???


### <a name="Rt-specialization2"></a>T.67: Use specialization to provide alternative implementations for irregular types


???

### <a name="Rt-cast"></a>T.68: Use `{}` rather than `()` within templates to avoid ambiguities


* flag `()` initializers
* flag function-style casts


### <a name="Rt-customization"></a>T.69: Inside a template, don't make an unqualified nonmember function call unless you intend it to be a customization point


* In a template, flag an unqualified call to a nonmember function that passes a variable of dependent type when there is a nonmember function of the same name in the template's namespace.


### <a name="Rt-hier"></a>T.80: Do not naively templatize a class hierarchy


* Flag virtual functions that depend on a template argument. ??? False positives

### <a name="Rt-array"></a>T.81: Do not mix hierarchies and arrays


* Detect this horror!

### <a name="Rt-linear"></a>T.82: Linearize a hierarchy when virtual functions are undesirable


???

### <a name="Rt-virtual"></a>T.83: Do not declare a member function template virtual


The compiler handles that.

### <a name="Rt-abi"></a>T.84: Use a non-template core implementation to provide an ABI-stable interface


???

### Type
* [Type.1: Don't use `reinterpret_cast`](#Pro-type-reinterpretcast)
* [Type.2: Don't use `static_cast` downcasts. Use `dynamic_cast` instead](#Pro-type-downcast)
* [Type.3: Don't use `const_cast` to cast away `const` (i.e., at all)](#Pro-type-constcast)
* [Type.4: Don't use C-style `(T)expression` casts that would perform a `static_cast` downcast, `const_cast`, or `reinterpret_cast`](#Pro-type-cstylecast)
* [Type.5: Don't use a variable before it has been initialized](#Pro-type-init)
* [Type.6: Always initialize a member variable](#Pro-type-memberinit)

### <a name="Pro-type-reinterpretcast"></a>Type.1: Don't use `reinterpret_cast`.


Issue a diagnostic for any use of `reinterpret_cast`. To fix: Consider using a `variant` instead.

### <a name="Pro-type-downcast"></a>Type.2: Don't use `static_cast` downcasts. Use `dynamic_cast` instead.


Issue a diagnostic for any use of `static_cast` to downcast, meaning to cast from a pointer or reference to `X` to a pointer or reference to a type that is not `X` or an accessible base of `X`. To fix: If this is a downcast or cross-cast then use a `dynamic_cast` instead, otherwise consider using a `variant` instead.

### <a name="Pro-type-constcast"></a>Type.3: Don't use `const_cast` to cast away `const` (i.e., at all).


Issue a diagnostic for any use of `const_cast`. To fix: Either don't use the variable in a non-`const` way, or don't make it `const`.

### <a name="Pro-type-cstylecast"></a>Type.4: Don't use C-style `(T)expression` casts that would perform a `static_cast` downcast, `const_cast`, or `reinterpret_cast`.


Issue a diagnostic for any use of a C-style `(T)expression` cast that would invoke a `static_cast` downcast, `const_cast`, or `reinterpret_cast`. To fix: Use a `dynamic_cast`, `const`-correct declaration, or `variant`, respectively.

#### clang-tidy
* only warning
[cppcoreguidelines-pro-type-cstyle-cast](http://clang.llvm.org/extra/clang-tidy/checks/cppcoreguidelines-pro-type-cstyle-cast.html)

### <a name="Pro-type-init"></a>Type.5: Don't use a variable before it has been initialized.


* Issue a diagnostic for any constructor of a non-trivially-constructible type that does not initialize all member variables. To fix: Write a data member initializer, or mention it in the member initializer list.
* Issue a diagnostic when constructing an object of a trivially constructible type without `()` or `{}` to initialize its members. To fix: Add `()` or `{}`.

### <a name="Pro-type-memberinit"></a>Type.6: Always initialize a member variable.


* Issue a diagnostic for any constructor of a non-trivially-constructible type that does not initialize all member variables. To fix: Write a data member initializer, or mention it in the member initializer list.
* Issue a diagnostic when constructing an object of a trivially constructible type without `()` or `{}` to initialize its members. To fix: Add `()` or `{}`.

