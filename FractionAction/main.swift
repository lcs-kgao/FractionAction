//
//  main.swift
//  ChipsFastFoodEmporium
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here
//Global numerator
var numerator = 0

//Global denominator
var denominator = 0

//Global remainder
var remainder = 0

//Loop until valid numerator input is found
while 2 == 2 {
    
    //Prompt for numerator
    print("Numerator?")
    
    //Wait for numerator
    let numeratorInput = readLine()
    
    //Check for nil
    guard let givenInput = numeratorInput else {
        //Failed input, back to start
        continue
        
    }
    
    //Check for integers
    guard let givenInteger = Int(givenInput) else {
         print("")
        //Failed input, back to start
        continue
    }
    
    //Check for boundary
    if givenInteger < 0 {
        //Failed input
        continue
    }
    
    //Passed tests
    
    numerator = givenInteger
    break
}

//Loop until valid numerator input is found
while 2 == 2 {
    
    //Prompt for denominator
    print("Denominator?")
    
    //Wait for numerator
    let denominatorInput = readLine()
    
    //Check for nil
    guard let givenInput = denominatorInput else {
        //Failed input, back to start
        continue
    }
    
    //Check for integers
    guard let givenInteger = Int(givenInput) else {
        //Failed input, back to start
        continue
    }
    
    //Check for boundary
    if givenInteger < 1 {
        //Failed input
        continue
    }
    
    //Passed tests
    denominator = givenInteger
    break
}

// PROCESS
// Implement the primary logic of the problem here
//Find whole number
let wholeNumber = numerator/denominator

// Remainder after the whole number
remainder = numerator % denominator

// Simplify
// If numerator == denominator, the answer will be a whole number
// If numerator == 0, answer = 0
// Both these have no fractions, so they can be skipped
if remainder != 0 {
    // Find fraction
    
    // Simplify
    // Find the common factors of the remainder and the denominator
    
    for i in stride(from: remainder, through: 2, by: -1) {
        
        // Divide the remainder and the denominator by the common factor
        if remainder%i == 0 && denominator%i == 0{
            denominator /= i
            remainder /= i
            
            //Now we know that "i" is the greatest common factor
            break //Stop the loop
        }
    }
}





// OUTPUT
// Report results to the user here
// Print out the answer (No fraction)
sleep(3)
print("There's something you know, something you don't know, something you will never know...")

sleep(2)

if remainder == 0 {
    print("The result is \(wholeNumber)")
}
    // No whole number
else if wholeNumber == 0 && remainder > 0
{
    print("The result is \(remainder)/\(denominator)")
}
    // Mixed fraction
else if wholeNumber > 0 && remainder > 0
{
    print("The result is \(wholeNumber) \(remainder)/\(denominator)")
}
    // Answer is 0
else
{
    print("The result is 0")
}

sleep(1)
print("Damn it, you know it.")
sleep(1)
print("I think you know too much...")
sleep(2)
print("————————————————————————————")
print("explode the laptop in")
sleep(1)
print("3")
sleep(1)
print("2")
sleep(1)
print("1")
sleep(1)
print("Kill yourself!")
