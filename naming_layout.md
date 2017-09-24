# [NL.4: Maintain a consistent indentation style](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl4-maintain-a-consistent-indentation-style)

- Use a tool.

**clang-format**

# [NL.8: Use a consistent naming style](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl8-use-a-consistent-naming-style)

- Would be possible except for the use of libraries with varying conventions.

**clang-tidy: readability-identifier-naming  
clang-format**

# [NL.9: Use ALL_CAPS for macro names only](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl9-use-all_caps-for-macro-names-only)

- Flag macros with lower-case letters
- Flag ALL_CAPS non-macro names

**clang-tidy: readability-identifier-naming**

# [NL.10: Avoid CamelCase](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl10-avoid-camelcase)

- Impossible

**clang-tidy: readability-identifier-naming**

# [NL.15: Use spaces sparingly](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl15-use-spaces-sparingly)

**clang-format**

# [NL.11: Make literals readable](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl11-make-literals-readable)

- Flag long digit sequences. The trouble is to define "long"; maybe 7.

**no enforcement**

# [NL.16: Use a conventional class member declaration order](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl16-use-a-conventional-class-member-declaration-order)

- Flag departures from the suggested order. There will be a lot of old code that doesn't follow this rule.

**no enforcement**

# [NL.17: Use K&R-derived layout](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl17-use-kr-derived-layout)

- If you want enforcement, use an IDE to reformat.

**clang-format**

# [NL.18: Use C++-style declarator layout](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl18-use-c-style-declarator-layout)

- Impossible in the face of history.

**clang-format**

# [NL.20: Don't place two statements on the same line](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl20-dont-place-two-statements-on-the-same-line)

- Easy

**clang-format**

# [NL.21: Declare one name (only) per declaration](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl21-declare-one-name-only-per-declaration)

- nothing

**no enforcement**

# [NL.25: Don't use void as an argument type](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl25-dont-use-void-as-an-argument-type)

**no enforcement**

# [NL.26: Use conventional const notation](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#nl26-use-conventional-const-notation)

- Flag const used as a suffix for a type.

**no enforcement**
