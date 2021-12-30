//
//  qualityButton.swift
//  ChordSolver (iOS)
//
//  Created by Dylan Shade on 4/13/21.
//

import SwiftUI

struct qualityButton: View {
    
    @EnvironmentObject var viewModel: triadBuildViewModel

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

                    case "Minor":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.minor.toggle()
                    case "+":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.aug.toggle()
                    case "o":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.dim.toggle()
                    case "MM7":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.MM7.toggle()
                    case "Mm7":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.Mm7.toggle()
                    case "mM7":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.mM7.toggle()
                    case "mm7":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.mm7.toggle()
                    case "ø7":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.hd7.toggle()
                    case "o7":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.fd7.toggle()
                    case "It+6":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.itA6.toggle()
                    case "Fr+6":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.frA6.toggle()
                    case "Ger+6":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.gerA6.toggle()
                    case "Sus2":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.sus2.toggle()
                    case "Sus4":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.sus4.toggle()
                    case "CT°7":
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.ct7.toggle()
                        
                    default:
                        active.toggle()
                        viewModel.resetButtons()
                        viewModel.major = true
                }
            }.foregroundColor(.white)

        }
    }
}

struct qualityButton_Previews: PreviewProvider {
    static var previews: some View {
        qualityButton()
    }
}
