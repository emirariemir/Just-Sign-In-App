//
//  WelcomeScreenView.swift
//  Just Sign In App
//
//  Created by Emir on 3.08.2022.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background Color").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    CustomImage(imageName: "Human")
                        .padding(.bottom, 10)
                    Spacer()
                    PrimaryButton(title: "Get Started", bgColorName: "Primary Color")
                        .padding(.bottom, 10)
                    NavigationLink(destination: SignInView().navigationBarHidden(true)) {
                        PrimaryButton(title: "Sign In", bgColorName: "Text Color")
                            .padding(.bottom, 10)
                    }.navigationBarHidden(true)
                    HStack{
                        Text("Want to learn more?")
                        Text("Discover here.")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Text Color"))
                    }.padding(.bottom, 20)
                }.padding([.leading, .trailing], 20)
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}

struct PrimaryButton: View {
    var title: String
    var bgColorName: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(bgColorName))
            .cornerRadius(50)
    }
}

struct CustomImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 350, alignment: .center)
    }
}
