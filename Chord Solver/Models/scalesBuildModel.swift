//
//  scalesBuildModel.swift
//  ChordSolver (iOS)
//
//  Created by Dylan Shade on 4/17/21.
//

import Foundation

struct scalesBuildModel {
    
    var root: String
    var two: String
    var three: String
    var four: String
    var five: String
    var six: String
    var sev: String?
    var eight: String?
    var nine: String?
    
    let notes: [String: Int] = [
        "A###": 0,"B#": 0, "C":0, "Dbb": 0,
        "B##": 1, "C#": 1, "Db": 1, "Ebbb": 1,
        "B###": 2, "C##": 2, "D": 2, "Ebb": 2, "Fbbb": 2,
        "C###": 3, "D#": 3, "Eb": 3, "Fbb": 3,
        "D##": 4, "E": 4, "Fb": 4, "Gbbb":4,
        "E#": 5, "F": 5, "Gbb": 5,
        "E##": 6, "F#": 6, "Gb": 6, "Abbb": 6,
        "F##": 7, "G": 7, "Abb": 7,
        "F###": 8, "G#": 8, "Ab": 8, "Bbbb": 8,
        "G##": 9, "A": 9, "Bbb": 9, "Cbbb": 9,
        "G###": 10, "A#": 10, "Bb": 10, "Cbb":10,
        "A##": 11, "B": 11, "Cb": 11, "Dbbb":11
    ]
    
    func findTwo() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == two  && tempInt.baseDist() == "2nd" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        else {
            return ""
        }
    }
    
    func findThree() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == three  && tempInt.baseDist() == "3rd" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        else {
            return ""
        }
    }
    
    func findFour() -> String {
    
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == four  && tempInt.baseDist() == "4th" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        else {
            return ""
        }
    }
    
    
    func findFive() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == five  && tempInt.baseDist() == "5th" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        else {
            return ""
        }
    }
    
    func findSix() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == six  && tempInt.baseDist() == "6th" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        else {
            return ""
        }
    }
    
    func findSev() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == sev  && tempInt.baseDist() == "7th" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        return ""
    }
    func findEight() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == sev  && tempInt.baseDist() == "7th" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        return ""
    }
    func findNine() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == eight  && tempInt.baseDist() == "P8" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        return ""
    }
    func findOctFive() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == five  && tempInt.baseDist() == "4th" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        return ""
    }
    func findOctSix() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == six  && tempInt.baseDist() == "5th" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        return ""
    }
    func findOctSev() -> String {
        
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == sev  && tempInt.baseDist() == "6th" {
                    return key
                }
                else {
                    continue
                }
            }
            return ""
        }
        return ""
    }
}
