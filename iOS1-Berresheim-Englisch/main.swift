//
//  main.swift
//  iOS1-Berresheim-Englisch
//
//  Created by Kenneth Englisch, Bartholomäus Berresheim on 14.10.20.
//

import Foundation

// creating complex from user input
let complex = Complex(real: readDouble(), ima: readDouble())
complex.toString()

// adding 1.2 + 2.4i to complex
complex.incrementBy(complex: Complex(real: 1.2, ima: 2.4))
complex.toString()

// adding 2.2 to real
complex.incrementBy(realInc: 2.2)
complex.toString()

// adding 0.6 to ima
complex.incrementBy(imaInc: 0.6)
complex.toString()

// muliply by 0.5 + 1.0 i
complex.multiplyBy(complex: Complex(real: 0.5, ima: 1.0))
complex.toString()

// rotate complex by DOUBLE.PI
complex.rotateBy(angle: Double.pi)
complex.toString()

// sum of complex and 0.2 + 0.9 i
let temp = complex.plus(complex: Complex(real: 0.2, ima: 0.9))
temp.toString()

func readDouble() -> Double
{
    print("Please insert a number: ")
    var double = 0.0
    
    if let input = readLine(){
        double = Double(input) ?? 0.0
    }
    return double
}

