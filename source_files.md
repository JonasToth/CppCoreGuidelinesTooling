# [SF.1: Use a .cpp suffix for code files and .h for interface files if your project doesn't already follow another convention](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf1-use-a-cpp-suffix-for-code-files-and-h-for-interface-files-if-your-project-doesnt-already-follow-another-convention)

- Flag non-conventional file names.
- Check that .h and .cpp (and equivalents) follow the rules below.

**no enforcement**

# [SF.2: A .h file may not contain object definitions or non-inline function definitions](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf2-a-h-file-may-not-contain-object-definitions-or-non-inline-function-definitions)

- Check the positive list:
- Alternative formulation: A .h file must contain only:

    - #includes of other .h files (possibly with include guards)
    - templates
    - class definitions
    - function declarations
    - extern declarations
    - inline function definitions
    - constexpr definitions
    - const definitions
    - using alias definitions

# [SF.3: Use .h files for all declarations used in multiple source files](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf3-use-h-files-for-all-declarations-used-in-multiple-source-files)

- Flag declarations of entities in other source files not placed in a .h.

**no enforcement**

# [SF.4: Include .h files before other declarations in a file](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf4-include-h-files-before-other-declarations-in-a-file)

- Easy.

**clang-format can order includes   
modularize area, since these header files are likely to be bad headers**

# [SF.6: Use using namespace directives for transition, for foundation libraries (such as std), or within a local scope (only)](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf6-use-using-namespace-directives-for-transition-for-foundation-libraries-such-as-std-or-within-a-local-scope-only)

- Flag multiple using namespace directives for different namespaces in a single source file.

# [SF.7: Don't write using namespace in a header file](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf7-dont-write-using-namespace-in-a-header-file)

- Flag using namespace at global scope in a header file.

# [SF.8: Use #include guards for all .h files](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf8-use-include-guards-for-all-h-files)

- Flag .h files without #include guards.

**no enforcement**

# [SF.9: Avoid cyclic dependencies among source files](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf9-avoid-cyclic-dependencies-among-source-files)

- Flag all cycles.

**no enforcement**

# [SF.10: Avoid dependencies on implicitly #included names](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf10-avoid-dependencies-on-implicitly-included-names)

- Enforcement would require some knowledge about what in a header is meant to be "exported" to users and what is there to enable implementation. No really good solution is possible until we have modules.

**modularize, include-what-you-use**

# [SF.21: Don't use an unnamed (anonymous) namespace in a header](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#sf21-dont-use-an-unnamed-anonymous-namespace-in-a-header)

- Flag any use of an anonymous namespace in a header file.

**no enforcement**
