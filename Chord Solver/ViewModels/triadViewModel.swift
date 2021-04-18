//
//  triadAnsViewModel.swift
//  ChordSolver (iOS)
//
//  Created by Dylan Shade on 4/12/21.
//

import Foundation

class triadBuildViewModel: ObservableObject {
    @Published var root: String = ""
    @Published var major = true
    @Published var minor = false
    @Published var aug = false
    @Published var dim = false
    @Published var MM7 = false
    @Published var Mm7 = false
    @Published var mm7 = false
    @Published var hd7 = false
    @Published var fd7 = false
    @Published var gerA6 = false
    @Published var itA6 = false
    @Published var frA6 = false
    @Published var sus2 = false
    @Published var sus4 = false
    
    func resetButtons() -> Void {
        major = false
        minor = false
        aug = false
        dim = false
        MM7 = false
        Mm7 = false
        mm7 = false
        hd7 = false
        fd7 = false
        gerA6 = false
        itA6 = false
        frA6 = false
        sus2 = false
        sus4 = false
    }
    
    func quality() -> Array<String> {
        var botTemp = "M3"
        var midTemp = "P5"
        var topTemp = "m3"
        
        
        if major {
            botTemp = "M3"
            topTemp = "P5"
            return [botTemp, topTemp]
        }
        else if minor {
            botTemp = "m3"
            topTemp = "P5"
            return [botTemp, topTemp]
        }
        else if aug {
            botTemp = "M3"
            topTemp = "Augmented 5th"
            return [botTemp, topTemp]
        }
        else if dim {
            botTemp = "m3"
            topTemp = "Diminished 5th"
            return [botTemp, topTemp]
        }
        else if MM7 {
            botTemp = "M3"
            midTemp = "P5"
            topTemp = "M7"
            return [botTemp, midTemp, topTemp]
        }
        else if Mm7 {
            botTemp = "M3"
            midTemp = "P5"
            topTemp = "m7"
            return [botTemp, midTemp, topTemp]
        }
        else if mm7 {
            botTemp = "m3"
            midTemp = "P5"
            topTemp = "m7"
            return [botTemp, midTemp, topTemp]
        }
        else if hd7 {
            botTemp = "m3"
            midTemp = "Diminished 5th"
            topTemp = "m7"
            return [botTemp, midTemp, topTemp]
        }
        else if fd7 {
            botTemp = "m3"
            midTemp = "Diminished 5th"
            topTemp = "Diminished 7th"
            return [botTemp, midTemp, topTemp]
        }
        else if itA6 {
            botTemp = "m6"
            midTemp = "Augmented 4th"
            topTemp = "Augmented 4th"
            return [botTemp, midTemp, topTemp]
        }
        else if gerA6 {
            botTemp = "m6"
            midTemp = "Augmented 4th"
            topTemp = "m3"
            return [botTemp, midTemp, topTemp]
        }
        else if frA6 {
            botTemp = "m6"
            midTemp = "Augmented 4th"
            topTemp = "M2"
            return [botTemp, midTemp, topTemp]
        }

        else if sus2 {
            botTemp = "M2"
            topTemp = "P5"
            return ["", botTemp, topTemp]
        }
        
        else if sus4 {
            botTemp = "P4"
            topTemp = "P5"
            return ["", botTemp, topTemp]
        }
        
        return [botTemp , topTemp]
    }
    
    func sus2nd() -> String {
        return triadBuild(root: root, botInt: quality()[0], midInt: quality()[1], topInt: quality()[2]).find2nd()
    }
    
    func sus2fifth() -> String {
        return triadBuild(root: root, botInt: quality()[1], midInt: quality()[2], topInt: quality()[2]).findFifth()
    }
    
    func sus4fifth() -> String {
        return triadBuild(root: root, botInt: quality()[1], midInt: quality()[2], topInt: quality()[2]).findFifth()
    }
    
    func find6th() -> String {
        return triadBuild(root: root, botInt: quality()[0], midInt: quality()[1]).find6th()
    }
    
    func find4th() -> String {
        return triadBuild(root: root, botInt: quality()[0], midInt: quality()[1], topInt: quality()[2]).findAug4th()
    }
    
    func augSpic() -> String {

        if quality()[2] == "m3" {
            return triadBuild(root: root, botInt: quality()[0], midInt: quality()[1], topInt: quality()[2]).findAug3()
        }
        else if quality()[2] == "M2" {
            return triadBuild(root: root, botInt: quality()[0], midInt: quality()[1], topInt: quality()[2]).find2nd()

        }
        return triadBuild(root: root, botInt: quality()[0], midInt: quality()[1], topInt: quality()[2]).findAug3()
    }
    
    func triadThird() -> String {
        return triadBuild(root: root, botInt: quality()[0], midInt: quality()[1], topInt: quality()[1]).findThird()
    }
    func triadFifth() -> String {
        return triadBuild(root: root, botInt: quality()[0], midInt: quality()[1], topInt: quality()[1]).findFifth()
    }
    func triadSev() -> String {
        return triadBuild(root: root, botInt: quality()[0],  midInt: quality()[1], topInt: quality()[2]).findSev()

    }
}
