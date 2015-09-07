// RUN: %target-parse-verify-swift

var stream = ""

print(3, appendNewline: false) // expected-error {{'print(_:appendNewline:)' is unavailable: Please use 'terminator: ""' instead of 'appendNewline: false': 'print((...), terminator: "")'}}
debugPrint(3, appendNewline: false) // expected-error {{'debugPrint(_:appendNewline:)' is unavailable: Please use 'terminator: ""' instead of 'appendNewline: false': 'debugPrint((...), terminator: "")'}}

print(3, &stream)
debugPrint(3, &stream)
print(3, &stream, appendNewline: false) // expected-error {{cannot pass immutable value of type 'OutputStreamType' as inout argument}}
debugPrint(3, &stream, appendNewline: false) // expected-error {{cannot pass immutable value of type 'OutputStreamType' as inout argument}} 
print(4, quack: 5) // expected-error {{'print' is unavailable: Please wrap your tuple argument in parentheses: 'print((...))'}}
