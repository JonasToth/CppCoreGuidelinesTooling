# [Enum.1: Prefer enumerations over macros](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#enum1-prefer-enumerations-over-macros)

- Flag macros that define integer values

**no enforcement**

# [Enum.2: Use enumerations to represent sets of related named constants](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#enum2-use-enumerations-to-represent-sets-of-related-named-constants)

- Flag switch-statements where the cases cover most but not all enumerators of an enumeration.
- Flag switch-statements where the cases cover a few enumerators of an enumeration, but has no default.

**clang: -Wswitch**

# [Enum.3: Prefer class enums over "plain" enums](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#enum3-prefer-class-enums-over-plain-enums)

- (Simple) Warn on any non-class enum definition.

**no enforcement**

# [Enum.4: Define operations on enumerations for safe and simple use](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#enum4-define-operations-on-enumerations-for-safe-and-simple-use)

- Flag repeated expressions cast back into an enumeration.

**no enforcement**

# [Enum.5: Don't use ALL_CAPS for enumerators](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#enum5-dont-use-all_caps-for-enumerators)

- Flag ALL_CAPS enumerators.

**no enforcement**

# [Enum.6: Avoid unnamed enumerations](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#enum6-avoid-unnamed-enumerations)

- Flag unnamed enumerations.

**no enforcement**

# [Enum.8: Specify enumerator values only when necessary](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#enum8-specify-enumerator-values-only-when-necessary)

- Flag duplicate enumerator values 
- Flag explicitly specified all-consecutive enumerator values

**no enforcement**
