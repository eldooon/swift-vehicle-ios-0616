//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Eldon Chan on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane : Vehicle {
    
    let maxAltitude : Double
    var altitude : Double = 0
    var inFlight : Bool {
        
        if speed > 0 && altitude > 0 {
            return true
        }
        
        return false
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude : Double) {
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeoff() {
        if inFlight == false {
            speed =  maxSpeed/10
            altitude = maxAltitude/10
        }
        
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb(){
        
        if inFlight {
            altitude += maxAltitude/10
            decelerate()
            
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
        }
       
    }
    
    func dive(){
        
        if inFlight {
            altitude -= maxAltitude/10
            accelerate()
            
            if altitude < 0 {
                altitude = 0
            }
        }
        
        if speed == 0 {
            altitude -= maxAltitude/10
            accelerate()
            
            if altitude < 0 {
                altitude = 0
            }
        }
        
    }
    
    func bankRight() {
        
        if inFlight {
            heading += 45
            speed -= speed/10
            
            if heading > 360 {
                heading -= 360
            }
        }
    }
    
    func bankLeft() {
        if inFlight {
            heading -= 45
            speed -= speed/10
            
            if heading < 0 {
                heading += 360
            }
        }
    }
    
    
    
}