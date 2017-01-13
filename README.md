# CppCoreGuidelinesTooling

This repository will contain an overview of the tooling support to enforce and check against the [CppCoreGuidelines]( https://github.com/isocpp/CppCoreGuidelines)

It is not meant to be complete [like the guidelines themself ;)] but give myself and others an overview what is possible to check statically. 
Furthermore it could help developers of the tools to see whats still to do.

**[Tool Overview](complete.md)**

# Tools

So which tools am I talking about?

- [clang-tidy](http://clang.llvm.org/extra/clang-tidy/)
- [Microsofts CoreCheck](https://www.nuget.org/packages/Microsoft.ExperimentalCppCoreCheck/)

Each of these tools gets it own overview page, and a general overview what is possible to check with any tool.
The detail pages will contain more information, like the ability to automatically fix issues, like *clang-tidy* does.

Since I don't use Visual Studio nor Windows, I can't say alot about *CoreCheck*, maybe someone else could do this? :)

# Your Part

Help me. There are a lot of rules and tools implement already a lot.
- Updating rules
- Updating tooling support
- Correcting stuff
- Help me with the language ;D
- I think there will be more as well.
- maybe rework the parsing and generation, its fragile
