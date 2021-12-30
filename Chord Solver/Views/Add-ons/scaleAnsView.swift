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
    
    let notesArr: [String] = [
        "A###","B#", "C", "Dbb",
        "B##", "C#", "Db", "Ebbb",
        "B###", "C##", "D", "Ebb", "Fbbb",
        "C###", "D#", "Eb", "Fbb",
        "D##", "E", "Fb", "Gbbb",
        "E#", "F", "Gbb",
        "E##", "F#", "Gb", "Abbb",
        "E###", "F##", "G", "Abb",
        "F###", "G#", "Ab", "Bbbb",
        "G##", "A", "Bbb", "Cbbb",
        "G###", "A#", "Bb", "Cbb",
        "A##", "B", "Cb", "Dbbb"
    ]

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
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.major ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 90, maxWidth: 90, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Major", active: viewModel.major)
                                }.ignoresSafeArea(edges: .horizontal)
                                .padding(.top)
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.pentatonic ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 110, maxWidth: 120, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Pentatonic", active: viewModel.pentatonic)
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 70, alignment: .center)
                                }.ignoresSafeArea(edges: .horizontal)
                                .padding(.top)
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.octatonic ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Octatonic", active: viewModel.octatonic)
                                        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                }.ignoresSafeArea(edges: .horizontal)
                                .padding(.top)
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.dorian ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 90, maxWidth: 90, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Dorian", active: viewModel.dorian)
                                }
                                .padding(.top)
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.phrygian ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 110, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Phyrigian", active: viewModel.phrygian)
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 80, alignment: .center)
                                }
                                .padding(.top)
                            }
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.lydian ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 120, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Lydian", active: viewModel.lydian)
                                }
                                .padding(.top)
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.mixo ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 110, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Mixolydian", active: viewModel.mixo)
                                }
                                .padding(.top)
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.locrian ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Locrian", active: viewModel.locrian)
                                }
                                .padding(.top)
                            }
                        }
                        HStack {
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.minorNat ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 70, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Natural\nMinor", active: viewModel.minorNat)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 80, alignment: .center)
                                }
                            
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.minorHarm ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 110, maxWidth: .infinity, minHeight: 70, maxHeight: 70, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Harmonic\nMinor", active: viewModel.minorHarm)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 60, alignment: .center)
                                }
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.minorMel ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 60, maxHeight: 70, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Melodic\nMinor", active: viewModel.minorMel)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 80, alignment: .center)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.wholeTone ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 90, maxWidth: 90, minHeight: 50, maxHeight: 70, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Whole\nTone", active: viewModel.wholeTone)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 70, alignment: .center)
                                }
                                .padding(.horizontal, -5)
                            }
                            
                            HStack {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.dorB2 ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 110, maxWidth: 150, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Phrygian ♮6", active: viewModel.dorB2)
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 60, alignment: .center)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.lydianAug ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 120, maxWidth: .infinity, minHeight: 70, maxHeight: 70, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Lydian\nAugmented", active: viewModel.lydianAug)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 60, alignment: .center)
                                }
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.lydDom ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 110, maxWidth: .infinity, minHeight: 70, maxHeight: 70, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Lydian\nDominant", active: viewModel.lydDom)
                                        .multilineTextAlignment(.center)
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 60, maxHeight: 60, alignment: .center)
                                }
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .foregroundColor(viewModel.supLoc ? Color(#colorLiteral(red: 0.4013041258, green: 0.4645072818, blue: 0.7669017911, alpha: 1)) : Color(#colorLiteral(red: 0.7215686275, green: 0.7098039216, blue: 1, alpha: 1)))
                                        .frame(minWidth: 90, maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                                        .transition(.scale)
                                    scaleButtons.init(name: "Altered", active: viewModel.supLoc)
                                }
                            }
                            
                        }
                        .padding(EdgeInsets(top: -10, leading: 0, bottom: 20, trailing: 0))

                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
            }.frame(height: 155, alignment: .center)
        }

        Spacer()
        
        VStack(alignment: .leading){
            HStack {
                if viewModel.pentatonic || viewModel.wholeTone || viewModel.octatonic {
                    if viewModel.pentatonic {
                        VStack {
                            HStack {
                                Text(viewModel.returnRoot())
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
                                
                                Text(viewModel.returnRoot())
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
                                Text(viewModel.returnRoot())
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
                                Text(viewModel.returnRoot())
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
                                Text(viewModel.returnRoot())
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
                            }
                            HStack {
                                Text(viewModel.octSev())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                                Text(viewModel.octEight())
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(.white))
                                    .padding(10)
                                Text(viewModel.returnRoot())
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
                            Text(viewModel.returnRoot())
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
                            Text(viewModel.returnRoot())
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(.white))
                                .padding(10)
                        }
                    }
                }
            }
        }.padding()
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
        .animation(.easeInOut)

    }
}

struct scalesAnsView_Previews: PreviewProvider {
    static var previews: some View {
        scalesAnsView()
    }
}
