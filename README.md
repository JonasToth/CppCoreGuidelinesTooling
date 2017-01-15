# CppCoreGuidelinesTooling

This repository will contain an overview of the **[tooling support](tool_overview.md)** to enforce and check against the [CppCoreGuidelines]( https://github.com/isocpp/CppCoreGuidelines).

The **[Tool Overview](tool_overview.md)** can be used for implementers of checks, to see what must be still done and for users of the mentioned tools to see which check can be used for which rule.

This is not a clone of the Guidelines, but a helpfull enhancement.

**[Tool Overview](tool_overview.md)**

# How to use the information?

__Step 1.__ Read the guideline  
__Step 2.__ Find something interesting which you want to introduce into your Codebase.  
__Step 3.__ Check **[Tool Overview](tool_overview.md)**, search for the rule (e.g. Type.4). There is the enforcement section of the Guideline and maybe hints for tools that enforce this rule.  
__Step 4.__ Use the tool  

# Tools

So which tools am I talking about?

### Clangs Toolchain
They aim to give a tool for all tasks, clang-tidy and clang-format are the most usefull right now.

- [clang-format](http://clang.llvm.org/docs/ClangFormat.html)
- [clang-tidy](http://clang.llvm.org/extra/clang-tidy/index.html)
- [clang static analyzer](http://clang-analyzer.llvm.org/) - can be called from clang-tidy!
- [list of clangs sanitizer](http://clang.llvm.org/docs/index.html) - this is compiler related, note that gcc implements some(all?) sanitizers as well!

Each of these tools gets it own overview page, and a general overview what is possible to check with any tool.
The detail pages will contain more information, like the ability to automatically fix issues, like *clang-tidy* does.

Since I don't use Visual Studio nor Windows, I can't say alot about *CoreCheck*, maybe someone else could do this? :)

# Contributing

Currently, I parse CppCoreGuidelines' markdown and try to extract each rule with its enforcement section. I put them all into a seperate file, and provide and matching file for each tool. It is written with bash, its fragile and I am not too proud for it.

*There is a better way to extract the rules, maybe reimplement the logic with python?*

Please correct and enhance the tooling sections. Provide more information how to configure the check, which check to use and the limitations. Whenever you implement a new check in a tool, please add it here (Pull Requests or Issues). 

Add more tools! Currently there is only clang-tidy. I know that Microsoft has a checker for Visual Studio as well. Since I don't use it, I can't verify what it does and what not. Give me some input here as well.
If there are even more tools that aare able to enforce rules of the Guideline, please add them as well (Pull Requests or Issues).
