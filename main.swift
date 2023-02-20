//ITP137 02182023 Assignment
//Filename: Quadratic.swift
//ax2 + bx + c = 0. This program gets user input of a, b and c, do the calculation and output value of x.
import Foundation
import Glibc
print("Authored by: Yan Lu")
print("")
//inform user of how the quadratic formula goes
print("ax^2 + bx + c = 0 ")
print("")
print("x=(-b±√(b^2-4ac))/2a")
print("")
print("Now let's get the quadratic value of x, based on the value of a,b,c")
//while loop to keepig doing the math, till user press N/n to stop. 
while true {
  //prompts user to enter value of a,b,c
    print("Please enter value of a:")
    let a = Double(readLine()!)!
    print("Please enter value of b:")
    let b = Double(readLine()!)!
    print("Please enter value of c:")
    let c = Double(readLine()!)!
    //get value of (b^2-4ac), and assign to delta.
    let delta = b * b - 4 * a * c
    if delta > 0 {
        let x1 = (-b + sqrt(delta)) / (2 * a)
      //if delta=0, there is only one answer for x
        let x2 = (-b - sqrt(delta)) / (2 * a)
        print("The equation has two real roots: x = \(x1) or x = \(x2)")
    } 
  //if delta>0, there are two possible answers for x
  
    else if delta == 0 {
          let x = -b / (2 * a)
          print("The equation has one real root: x = \(x)")
      }
  //if delta<0, there is no valid answer for x. Because (b^2-4ac)must be positive or 0 to get a square foot. 
    else {
          print("The equation has no real roots")}
  //ask user whether to do another calculation.If user input is anything but N or n, do another calcuation. If user input is N or n, ends program.
    print("Do you want to do another calculation?")
    print("Enter N to end the program or press any other key to do another calculation.")
    let response = readLine()!

    if response == "N"||response=="n" {
        print("See you next time!")
        break
    }  
}
