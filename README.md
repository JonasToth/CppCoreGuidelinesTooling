# CppCoreGuidelinesTooling

This repository will contain an overview of tooling support to enforce and check against the [CppCoreGuidelines](https://github.com/isocpp/CppCoreGuidelines).

This is not a clone of the Guidelines, but a helpfull enhancement.

The document is structured similar to the Guidelines, with each
subsection beeing seperate. Since not every rule is enforceable by tools,
some rules will not be mentioned here, to reduce the noise.

## Main Sections

[P: Philosophy](philosophy.md)  
[I: Interfaces](interfaces.md)  
[F: Functions](functions.md)  
[C: Classes and class hierarchies](classes_hierarchy.md)  
[Enum: Enumerations](enumerations.md)  
[R: Resource Management](resource_management.md)  
[ES: Expressions and statements](expressions.md)  
[Per: Performance](performance.md)  
[CP: Concurrency](concurrency.md)  
[E: Error handling](error_handling.md)  
[Con: Constants and immutability](constants.md)  
[T: Templates and generic programming](templates.md)  
`CPL: C-style programming` just use C++ Compiler  
[SF: Source Files](source_files.md)  
[SL: The standard library]() currently a bit messy?  

## Supporting Sections

[Pro: Profiles](profiles.md)  
[NL: Naming and layout](naming_layout.md)  

# Tools

So which tools am I talking about?

## Clangs Toolchain
They aim to give a tool for all tasks, clang-tidy and clang-format are the most usefull right now.

- [clang-format](http://clang.llvm.org/docs/ClangFormat.html)
- [clang-tidy](http://clang.llvm.org/extra/clang-tidy/index.html)
- [clang static analyzer](http://clang-analyzer.llvm.org/) - can be called from clang-tidy!
- [list of clangs sanitizer](http://clang.llvm.org/docs/index.html) - this is compiler related, note that gcc implements some sanitizers as well!

Each of these tools gets it own overview page, and a general overview what is possible to check with any tool.
The detail pages will contain more information, like the ability to automatically fix issues, like *clang-tidy* does.

## CppCheck

`cppcheck` is a static analyzer that implements a lot of usefull checks.

## CppCoreCheck

It's provided by Microsoft in Visual Studio and partially enforces the
Guidelines as well.
Since I don't use Visual Studio nor Windows, I can't say alot about *CoreCheck*, maybe someone else could do this? :)

