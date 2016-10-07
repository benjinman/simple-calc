//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 10/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation;

func add(a: Int, b: Int) -> Int {
    return a + b;
}

func sub(a: Int, b: Int) -> Int {
    return a - b;
}

func div(a: Int, b: Int) -> Int {
    return a / b;
}

func mul(a: Int, b: Int) -> Int {
    return a * b;
}

func mod(a: Int, b: Int) -> Int {
    return a % b;
}

func count(nums: [Int]) -> Int {
    return nums.count;
}

func avg(nums: [Int]) -> Int {
    var sum = 0;
    for num in nums {
        sum += num;
    }
    return sum / nums.count;
}

func fact(num: Int) -> Int {
    if (num == 1) {
        return num;
    }
    
    return num * fact(num: (num - 1));
}

var result: Int = 0;

print("Enter an expression separated by returns:");

let input = readLine(strippingNewline: true)!;
let line = String.init(input)!;

if (line.contains("count") || line.contains("avg") || line.contains("fact")) {
    let nums : [String] = line.characters.split(separator: " ").map(String.init);
    
    var numbers : [Int] = [];
    for i in 0...nums.count - 2 {
        numbers.append(Int(nums[i])!);
    }
    
    if (line.contains("count")) {
        result = count(nums: numbers);
    } else if (line.contains("avg")) {
        result = avg(nums: numbers);
    } else if (line.contains("fact")) {
        result = fact(num: numbers[0]);
    }
} else {
    let num : Int = Int(line)!;
    
    let Operatr = readLine(strippingNewline: true)!;
    let op = String.init(Operatr)!;
    
    let secondNum = readLine(strippingNewline: true)!;
    let num2 = Int.init(secondNum)!;
    
    if (op == "+") {
        result = add(a: num, b: num2);
    } else if (op == "-") {
        result = sub(a: num, b: num2);
    } else if (op == "/") {
        result = div(a: num, b: num2);
    } else if (op == "*") {
        result = mul(a: num, b: num2);
    } else {
        result = mod(a: num, b: num2);
    }
}

print("Result: \(result)");
