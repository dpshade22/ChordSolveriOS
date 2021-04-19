//
//  scalesAnsView.swift
//  ChordSolver (iOS)
//
//  Created by Dylan Shade on 4/17/21.
//

import SwiftUI

struct scalesAnsView: View {
    
    @EnvironmentObject var viewModel: scalesViewModel
    @Environment(\.colorScheme) var colorScheme

    @State var offset = CGSize.zero
    @State var root: String = ""
    @State var triad: Bool = true

    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle.init(cornerRadius: 10.0)
                        .frame(maxWidth: 350, maxHeight: 50, alignment: .center)
                        .foregroundColor(.white)
                    TextField("Enter a note:", text: $viewModel.root)
                        .foregroundColor(.black)
                        .frame(maxWidth: 350, maxHeight: 70, alignment: .center)
                        .padding()
                }
            }
        }
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack {
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.major ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Major", active: viewModel.major)
                            }.ignoresSafeArea(edges: .horizontal)
                            .padding(.top)

                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.pentatonic ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Pentatonic", active: viewModel.pentatonic)
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 70, alignment: .center)
                            }.ignoresSafeArea(edges: .horizontal)
                            .padding(.top)
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.octatonic ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 90, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Octatonic", active: viewModel.octatonic)
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 70, alignment: .center)
                            }.ignoresSafeArea(edges: .horizontal)
                            .padding(.top)
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.dorian ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 70, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Dorian", active: viewModel.dorian)
                            }
                            .padding(.top)
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.phrygian ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 70, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Phyrigian", active: viewModel.phrygian).frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 80, alignment: .center)
                            }
                            .padding(.top)
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.lydian ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 70, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Lydian", active: viewModel.lydian)
                            }
                            .padding(.top)
                        }
                        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 20))


                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.minorNat ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 70, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Natural \nMinor", active: viewModel.minorNat)
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 80, alignment: .center)
                            }
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.minorHarm ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 100, maxWidth: .infinity, minHeight: 70, maxHeight: 80, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Harmonic \nMinor", active: viewModel.minorHarm)
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 60, alignment: .center)
                            }
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.minorMel ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 80, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Melodic \nMinor", active: viewModel.minorMel)
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 80, alignment: .center)
                            }
                            
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.wholeTone ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 70, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Whole \nTone", active: viewModel.wholeTone)
                                    .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 70, alignment: .center)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.mixo ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 70, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Mixolydian", active: viewModel.mixo)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(viewModel.locrian ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                    .frame(minWidth: 70, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                    .transition(.scale)
                                scaleButtons.init(name: "Locrian", active: viewModel.locrian)
                            }
                            
                        }.padding(EdgeInsets(top: -15, leading: 15, bottom: 0, trailing: 20))
                }
            }.frame(height: 155, alignment: .center)
        }
        
        Spacer()
        
        VStack(alignment: .leading){
            HStack {
                if viewModel.pentatonic || viewModel.wholeTone || viewModel.octatonic {
                    if viewModel.pentatonic {
                        VStack {
                            HStack {
                                Text(viewModel.root)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)

                                Text(viewModel.two())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)

                                Text(viewModel.three())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            }
                            HStack {
                                Text(viewModel.five())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            
                                Text(viewModel.six())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                                
                                Text(viewModel.root)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            }
                        }
                    }
                    if viewModel.wholeTone {
                        VStack {
                            HStack {
                                Text(viewModel.root)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)

                                Text(viewModel.two())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)

                                Text(viewModel.three())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            }
                
                        
                            HStack {
                                Text(viewModel.four())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            
                                Text(viewModel.five())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                                
                                Text(viewModel.six())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                                Text(viewModel.root)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            }
                        }
                    }
                    if viewModel.octatonic {
                        VStack {
                            HStack {
                                Text(viewModel.root)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)

                                Text(viewModel.two())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)

                                Text(viewModel.three())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                                
                                Text(viewModel.four())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            }
                            HStack {
                                Text(viewModel.octFive())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            
                                Text(viewModel.octSix())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                                Text(viewModel.octSev())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                                Text(viewModel.root)
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                            }
                        }
                    }
                }
                else {
                    VStack {
                        HStack {
                            Text(viewModel.root)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)

                            Text(viewModel.two())
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)

                            Text(viewModel.three())
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)
                            
                            Text(viewModel.four())
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)
                        }
                        
                        HStack {
                            Text(viewModel.five())
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)
        
                            
                            Text(viewModel.six())
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)
                            
                            Text(viewModel.sev())
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)
                            Text(viewModel.root)
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)
                        }
                    }
                }
            }
        }.padding()
        .frame(minWidth: 0, idealWidth: 100, maxWidth: 428, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
        .animation(.easeInOut)

    }
}

struct scalesAnsView_Previews: PreviewProvider {
    static var previews: some View {
        scalesAnsView()
    }
}
