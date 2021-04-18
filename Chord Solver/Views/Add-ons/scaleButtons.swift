//
//  scaleButtons.swift
//  ChordSolver (iOS)
//
//  Created by Dylan Shade on 4/17/21.
//

import SwiftUI

struct scaleButtons: View {
    
    @EnvironmentObject var viewModel: scalesViewModel

    var name: String = "Major"
    @State var active: Bool = false
    
    var body: some View {
        ZStack {
            Button(name) {
                
                switch name {
                    case "Major":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.major.toggle()
                    case "Natural \nMinor":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.minorNat.toggle()
                    case "Harmonic \nMinor":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.minorHarm.toggle()
                    case "Melodic \nMinor":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.minorMel.toggle()
                    case "Pentatonic":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.pentatonic.toggle()
                    case "Whole \nTone":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.wholeTone.toggle()
                    case "Octatonic":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.octatonic.toggle()
                    case "Dorian":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.dorian.toggle()
                    case "Phyrigian":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.phrygian.toggle()
                    case "Lydian":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.lydian.toggle()
                    case "Mixolydian":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.mixo.toggle()
                    case "Locrian":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.locrian.toggle()
                        
                    default:
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.major = true
                }
            }.foregroundColor(.white)

        }
    }
}

struct scaleButtons_Previews: PreviewProvider {
    static var previews: some View {
        scaleButtons()
    }
}
