//
//  TitleView.swift
//  Chord Solver
//
//  Created by Dylan Shade on 4/7/21.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        Text("Chord Solver")
            .bold()
            .font(.title)
            .foregroundColor(.blue)    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
