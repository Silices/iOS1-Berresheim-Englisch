//
//  Complex.swift
//  iOS1-Berresheim-Englisch
//
//  Created by Kenneth Englisch, Bartholomäus Berresheim on 14.10.20.
//

import Foundation

class Complex{
    
    var real = 0.0
    var ima = 0.0
    
    init(real: Double, ima: Double){
        self.real = real
        self.ima = ima
    }
    
    func incrementBy(realInc: Double){
        self.real += realInc
    }
    
    func incrementBy(imaInc: Double){
        self.ima += imaInc
    }

    func incrementBy(complex: Complex){
        self.real += complex.real
        self.ima += complex.ima
    }

    func multiplyBy(complex: Complex){
        let temp = (self.real * complex.real) - (self.ima * complex.ima)
        self.ima = (self.real * complex.ima) + (self.ima * complex.real)
        self.real = temp
    }
    
    func rotateBy(angle: Double){
        let temp = Complex(real: cos(angle), ima: sin(angle))
        multiplyBy(complex: temp)
    }
    
    func plus(complex: Complex) -> Complex{
        let temp = Complex(real: self.real, ima: self.ima)
        temp.incrementBy(complex: complex)
        
        return temp
    }
    
    func toString() {
        if ima < 0.0 {
            print(self.real, " - " , abs(self.ima), "i")
        } else {
            print(self.real, " + " , self.ima, "i")
        }
    }
}
