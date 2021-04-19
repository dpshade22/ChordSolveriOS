struct triadBuild {
    
    var root: String
    var botInt: String
    var midInt: String
    var topInt: String?
    
    func findThird() -> String {
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
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == botInt  && tempInt.baseDist() == "3rd" {
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
    
    func find6th() -> String {
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
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == botInt  && tempInt.baseDist() == "6th" {
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
    
    func find2nd() -> String {
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
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == midInt  && tempInt.baseDist() == "2nd" {
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
    
    func findAug2nd() -> String {
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
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == topInt  && tempInt.baseDist() == "2nd" {
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
    
    
    func findAug3() -> String {
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
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == topInt  && tempInt.baseDist() == "3rd" {
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
    
    func findAug4th() -> String {
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
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == midInt  && tempInt.baseDist() == "4th" {
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
    func findFifth() -> String {
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
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == midInt  && tempInt.baseDist() == "5th" {
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
    
    func findSev() -> String {
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
        if root != "" {
            for (key, _) in notes {
                let tempInt = Interval(bottom: root, top: key)
                if tempInt.dToName() == topInt  && tempInt.baseDist() == "7th" {
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
