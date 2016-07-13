//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Eldon Chan on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet : Plane {
    
    override func climb() {
        if inFlight {
            altitude += maxAltitude/5
            decelerate()
            
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
        }
        
    }
    
    override func dive() {
        if inFlight {
            altitude -= maxAltitude/5
            accelerate()
            
            if altitude < 0 {
                altitude = 0
            }
        }
        
    }
    
    func afterburner() {
        
        if inFlight && speed == maxSpeed{
            speed = 2 * maxSpeed
        }
    }
}