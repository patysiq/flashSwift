//
//  TopicsModel.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 16/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

struct TopicsModel {
    
    var section: String
    var title: [String]
    var text: [String]
    
    init(section: String, title: [String], text: [String]) {
        self.section = section
        self.title = title
        self.text = text
   }
    
    static func itemsMock() -> [TopicsModel] { // swiftlint:disable:this function_body_length 
        let itensMock = [
            TopicsModel(
                section:"Beginners",
                title: [
                    "Declaring Constants and Variables",
                    "Arithmetic Operators",
                    "Basic Operators",
                    "Comparison Operators",
                    "Ternary Conditional Operator"
                ],
                text: [
                    "Constants and variables must be declared before they’re used. You declare constants with the let keyword and variables with the var keyword.Here’s an example of how constants and variables can be used to track the number of login attempts a user has made: let maximumNumberOfLoginAttempts = 10, var currentLoginAttempt = 0 This code can be read as: “Declare a new constant called maximumNumberOfLoginAttempts, and give it a value of 10. Then, declare a new variable called currentLoginAttempt, and give it an initial value of 0. In this example, the maximum number of allowed login attempts is declared as a constant, because the maximum value never changes. The current login attempt counter is declared as a variable, because this value must be incremented after each failed login attempt. You can declare multiple constants or multiple variables on a single line, separated by commas: var x = 0.0, y = 0.0, z = 0.0 NOTE: If a stored value in your code won’t change, always declare it as a constant with the let keyword. Use variables only for storing values that need to be able to change.",
                    "Swift supports the four standard arithmetic operators for all number types: Addition (+), Subtraction (-), Multiplication (*), Division (/). 1 + 2       // equals 3 , 5 - 3       // equals 2 , 2 * 3       // equals 6, 10.0 / 2.5  // equals 4.0 Unlike the arithmetic operators in C and Objective-C, the Swift arithmetic operators don’t allow values to overflow by default. You can opt in to value overflow behavior by using Swift’s overflow operators (such as a &+ b). NOTE: The addition operator is also supported for String concatenation: ”hello, ” + ”world”  // equals ”hello, world” Remainder Operator: The remainder operator (a % b) works out how many multiples of b will fit inside a and returns the value that is left over (known as the remainder).NOTE: The remainder operator (%) is also known as a modulo operator in other languages. However, its behavior in Swift for negative numbers means that, strictly speaking, it’s a remainder rather than a modulo operation.",
                    "Like C, Swift provides compound assignment operators that combine assignment (=) with another operation. One example is the addition assignment operator (+=): var a = 1, a += 2 // a is now equal to 3. The expression a += 2 is shorthand for a = a + 2. Effectively, the addition and the assignment are combined into one operator that performs both tasks at the same time. NOTE: The compound assignment operators don’t return a value. For example, you can’t write let b = a += 2.",
                    "Swift supports the following comparison operators: Equal to (a == b), Not equal to (a != b), Greater than (a > b), Less than (a < b), Greater than or equal to (a >= b), Less than or equal to (a <= b) NOTE: Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance. For more information, see Identity Operators.",
                    "Swift supports the following comparison operators: Equal to (a == b), Not equal to (a != b), Greater than (a > b), Less than (a < b), Greater than or equal to (a >= b), Less than or equal to (a <= b) NOTE: Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance. For more information, see Identity Operators."
            ]),
            TopicsModel(
                section:"Intermediate",
                title: [
                    "Declaring Constants and Variables",
                    "Arithmetic Operators",
                    "Basic Operators",
                    "Comparison Operators",
                    "Ternary Conditional Operator"
                ],
                text: [
                    "Constants and variables must be declared before they’re used. You declare constants with the let keyword and variables with the var keyword.Here’s an example of how constants and variables can be used to track the number of login attempts a user has made: let maximumNumberOfLoginAttempts = 10, var currentLoginAttempt = 0 This code can be read as: “Declare a new constant called maximumNumberOfLoginAttempts, and give it a value of 10. Then, declare a new variable called currentLoginAttempt, and give it an initial value of 0. In this example, the maximum number of allowed login attempts is declared as a constant, because the maximum value never changes. The current login attempt counter is declared as a variable, because this value must be incremented after each failed login attempt. You can declare multiple constants or multiple variables on a single line, separated by commas: var x = 0.0, y = 0.0, z = 0.0 NOTE: If a stored value in your code won’t change, always declare it as a constant with the let keyword. Use variables only for storing values that need to be able to change.",
                    "Swift supports the four standard arithmetic operators for all number types: Addition (+), Subtraction (-), Multiplication (*), Division (/). 1 + 2       // equals 3 , 5 - 3       // equals 2 , 2 * 3       // equals 6, 10.0 / 2.5  // equals 4.0 Unlike the arithmetic operators in C and Objective-C, the Swift arithmetic operators don’t allow values to overflow by default. You can opt in to value overflow behavior by using Swift’s overflow operators (such as a &+ b). NOTE: The addition operator is also supported for String concatenation: ”hello, ” + ”world”  // equals ”hello, world” Remainder Operator: The remainder operator (a % b) works out how many multiples of b will fit inside a and returns the value that is left over (known as the remainder).NOTE: The remainder operator (%) is also known as a modulo operator in other languages. However, its behavior in Swift for negative numbers means that, strictly speaking, it’s a remainder rather than a modulo operation.",
                    "Like C, Swift provides compound assignment operators that combine assignment (=) with another operation. One example is the addition assignment operator (+=): var a = 1, a += 2 // a is now equal to 3. The expression a += 2 is shorthand for a = a + 2. Effectively, the addition and the assignment are combined into one operator that performs both tasks at the same time. NOTE: The compound assignment operators don’t return a value. For example, you can’t write let b = a += 2.",
                    "Swift supports the following comparison operators: Equal to (a == b), Not equal to (a != b), Greater than (a > b), Less than (a < b), Greater than or equal to (a >= b), Less than or equal to (a <= b) NOTE: Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance. For more information, see Identity Operators.",
                    "Swift supports the following comparison operators: Equal to (a == b), Not equal to (a != b), Greater than (a > b), Less than (a < b), Greater than or equal to (a >= b), Less than or equal to (a <= b) NOTE: Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance. For more information, see Identity Operators."
            ]),
            TopicsModel(
                section:"Advanced",
                title: [
                    "Declaring Constants and Variables",
                    "Arithmetic Operators",
                    "Basic Operators",
                    "Comparison Operators",
                    "Ternary Conditional Operator"
                ],
                text: [
                    "Constants and variables must be declared before they’re used. You declare constants with the let keyword and variables with the var keyword.Here’s an example of how constants and variables can be used to track the number of login attempts a user has made: let maximumNumberOfLoginAttempts = 10, var currentLoginAttempt = 0 This code can be read as: “Declare a new constant called maximumNumberOfLoginAttempts, and give it a value of 10. Then, declare a new variable called currentLoginAttempt, and give it an initial value of 0. In this example, the maximum number of allowed login attempts is declared as a constant, because the maximum value never changes. The current login attempt counter is declared as a variable, because this value must be incremented after each failed login attempt. You can declare multiple constants or multiple variables on a single line, separated by commas: var x = 0.0, y = 0.0, z = 0.0 NOTE: If a stored value in your code won’t change, always declare it as a constant with the let keyword. Use variables only for storing values that need to be able to change.",
                    "Swift supports the four standard arithmetic operators for all number types: Addition (+), Subtraction (-), Multiplication (*), Division (/). 1 + 2       // equals 3 , 5 - 3       // equals 2 , 2 * 3       // equals 6, 10.0 / 2.5  // equals 4.0 Unlike the arithmetic operators in C and Objective-C, the Swift arithmetic operators don’t allow values to overflow by default. You can opt in to value overflow behavior by using Swift’s overflow operators (such as a &+ b). NOTE: The addition operator is also supported for String concatenation: ”hello, ” + ”world”  // equals ”hello, world” Remainder Operator: The remainder operator (a % b) works out how many multiples of b will fit inside a and returns the value that is left over (known as the remainder).NOTE: The remainder operator (%) is also known as a modulo operator in other languages. However, its behavior in Swift for negative numbers means that, strictly speaking, it’s a remainder rather than a modulo operation.",
                    "Like C, Swift provides compound assignment operators that combine assignment (=) with another operation. One example is the addition assignment operator (+=): var a = 1, a += 2 // a is now equal to 3. The expression a += 2 is shorthand for a = a + 2. Effectively, the addition and the assignment are combined into one operator that performs both tasks at the same time. NOTE: The compound assignment operators don’t return a value. For example, you can’t write let b = a += 2.",
                    "Swift supports the following comparison operators: Equal to (a == b), Not equal to (a != b), Greater than (a > b), Less than (a < b), Greater than or equal to (a >= b), Less than or equal to (a <= b) NOTE: Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance. For more information, see Identity Operators.",
                    "Swift supports the following comparison operators: Equal to (a == b), Not equal to (a != b), Greater than (a > b), Less than (a < b), Greater than or equal to (a >= b), Less than or equal to (a <= b) NOTE: Swift also provides two identity operators (=== and !==), which you use to test whether two object references both refer to the same object instance. For more information, see Identity Operators."
            ])
            
        ]
        
        return itensMock
    }
    
}
