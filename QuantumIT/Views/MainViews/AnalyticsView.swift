//
//  AnalyticsView.swift
//  QuantumIT
//
//  Created by Swayam Rustagi on 21/05/24.
//

import SwiftUI
import Kingfisher

struct AnalyticsView: View {
    
    @StateObject var viewModel = BannerViewModel(service: BannerService())
    @State private var selectedImage: String? = nil
    
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                VStack{
                    ZStack{
                        Image("fitguy")
                            .resizable()
                            .scaledToFit()
                        
                        VStack{
                            HStack{
                                VStack{
                                    Image("fatguy")
                                        .resizable()
                                        .frame(width: 110, height: 110)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .onTapGesture {
                                            selectedImage = "fatguy"
                                        }
                                    
                                    Text("Before")
                                        .foregroundStyle(.black)
                                        .padding(8)
                                        .background(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                                }
                                
                                Spacer()
                                
                                VStack{
                                    Image("fitguy")
                                        .resizable()
                                        .frame(width: 110, height: 110)
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .onTapGesture {
                                            selectedImage = "fitguy"
                                        }
                                    
                                    Text("Current")
                                        .foregroundStyle(.black)
                                        .padding(6)
                                        .background(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                                }
                            }
                            
                            Text("Brad Zolt")
                                .foregroundStyle(.white)
                                .font(.title2)
                                .bold()
                            Text("Contest Prep | Coach Brad")
                                .foregroundStyle(.white)
                                .font(.caption)
                            
                        }
                        .padding()
                    }
                    
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(viewModel.bannerArray){banner in
                                KFImage.url(URL(string: banner.image))
                                    .placeholder{
                                        Rectangle().foregroundStyle(.gray).frame(width: 120, height: 120)
                                    }
                                    .resizable()
                                    .frame(width: 360, height: 200)
                                    .scaledToFit()
                            }
                        }
                    }
                    
                    HStack{
                        VStack{
                            NavigationLink{
                                BodyStatsView()
                            }label: {
                                RectangularButtons(feature: "Body Stats")
                            }
                            
                            NavigationLink{
                                ChartsView()
                            }label: {
                                RectangularButtons(feature: "Charts")
                            }
                            
                            NavigationLink{
                                ReferalView()
                            }label: {
                                RectangularButtons(feature: "Referal")
                            }
                            
                            Image("qit")
                                .resizable()
                                .frame(width: 150, height: 100)
                            
                            Spacer()
                        }
                        
                        VStack{
                            HStack{
                                CircularButtons(buttonImage: "fork.knife", featureName: "Meal Plan")
                                CircularButtons(buttonImage: "dumbbell", featureName: "Workout")
                            }
                            
                            HStack{
                                CircularButtons(buttonImage: "calendar", featureName: "Weekly Checkin")
                                CircularButtons(buttonImage: "calendar", featureName: "Monthly Checkin")
                            }
                            
                            HStack{
                                CircularButtons(buttonImage: "photo", featureName: "Images")
                                CircularButtons(buttonImage: "video.fill", featureName: "Video")
                            }
                        }
                        
                    }
                    .padding()
                    
                    
                    Spacer()
                    
                }
                    if let imageName = selectedImage {
                                Color.black.opacity(0.5)
                                  .ignoresSafeArea(.all)
                                  .onTapGesture {
                                    selectedImage = nil
                                  }

                                VStack {
                                    
                                    Spacer()
                                    
                                  Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .background(Color.white.opacity(0.8))
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                    .onTapGesture {
                                      selectedImage = nil
                                    }
                                    .padding()
                                    
                                    Spacer()
                                    
                                    Spacer()
                                }
                                .transition(.opacity)
                              }
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Image(systemName: "line.3.horizontal")
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Image(systemName: "bell.fill")
                }
            }
            }
        }
    }
}

#Preview {
    AnalyticsView()
}
