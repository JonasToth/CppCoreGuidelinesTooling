# CppCoreGuidelinesTooling

This repository will contain an overview of tooling support to enforce and check against the [CppCoreGuidelines](https://github.com/isocpp/CppCoreGuidelines).

This is not a clone of the Guidelines, but a helpful enhancement.

The document is structured similarly to the Guidelines, with each
subsection being seperate. Since not every rule is enforceable by tools,
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
They aim to give a tool for all tasks, clang-tidy and clang-format are the most useful right now.

- [clang-format](http://clang.llvm.org/docs/ClangFormat.html)
- [clang-tidy](http://clang.llvm.org/extra/clang-tidy/index.html)
- [clang static analyzer](http://clang-analyzer.llvm.org/) - can be called from clang-tidy!
- [list of clangs sanitizer](http://clang.llvm.org/docs/index.html) - this is compiler related, note that gcc implements some sanitizers as well!

Each of these tools gets it own overview page, and a general overview what is possible to check with any tool.
The detail pages will contain more information, like the ability to automatically fix issues, like `clang-tidy` does.

To use `clang-tidy` copy one of the `clang-tidy-<version>` to your repository
and name it as `.clang-tidy`. It will enable all checks that enforce the
guidelines. You can further modify the checks as well.

## CppCheck

`cppcheck` is a static analyzer that implements a lot of useful checks.

## CppCoreCheck

It's provided by Microsoft in Visual Studio and partially enforces the
Guidelines as well.
Since I don't use Visual Studio nor Windows, I can't say a lot about `CoreCheck`, maybe someone else could do this? :)

## Implementation status

This section gives an overview of the Implementation status for the
CppCoreGuidelines in several analysis tools. Most of them are `clang` based and
`clang-tidy` has most of the checks implemented.

### Total statistics

### Total statistics
/partial/done/todo/enforceable/ (/12/97/182/291/) **33.33%** done

#### classes_hierarchy.md statistics
/partial/done/todo/enforceable/ (/0/21/46/67/) **31.34%** done

#### concurrency.md statistics
/partial/done/todo/enforceable/ (/0/1/11/12/) **8.33%** done

#### constants.md statistics
/partial/done/todo/enforceable/ (/1/0/4/5/) **0%** done

#### enumerations.md statistics
/partial/done/todo/enforceable/ (/0/1/6/7/) **14.28%** done

#### error_handling.md statistics
/partial/done/todo/enforceable/ (/1/3/3/7/) **42.85%** done

#### expressions.md statistics
/partial/done/todo/enforceable/ (/0/23/37/60/) **38.33%** done

#### functions.md statistics
/partial/done/todo/enforceable/ (/3/10/15/28/) **35.71%** done

#### interfaces.md statistics
/partial/done/todo/enforceable/ (/1/2/8/11/) **18.18%** done

#### naming_layout.md statistics
/partial/done/todo/enforceable/ (/0/8/5/13/) **61.53%** done

#### performance.md statistics
/partial/done/todo/enforceable/ (/0/1/0/1/) **100.00%** done

#### philosophy.md statistics
/partial/done/todo/enforceable/ (/6/0/3/9/) **0%** done

#### profiles.md statistics
/partial/done/todo/enforceable/ (/0/2/1/3/) **66.66%** done

#### resource_management.md statistics
/partial/done/todo/enforceable/ (/0/10/11/21/) **47.61%** done

#### source_files.md statistics
/partial/done/todo/enforceable/ (/0/2/8/10/) **20.00%** done

#### templates.md statistics
/partial/done/todo/enforceable/ (/0/4/24/28/) **14.28%** done

