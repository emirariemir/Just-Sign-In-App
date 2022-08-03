//
//  SignInView.swift
//  Just Sign In App
//
//  Created by Emir on 4.08.2022.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        ZStack {
            Color("Background Color").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("Sign In.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Text Color"))
                SignInWithButton(logoName: "apple-logo", title: "Sign in with Apple")
                    .padding(.bottom)
                SignInWithButton(logoName: "google-logo", title: "Sign in with Google")
                UseEmailPart()
                Spacer()
                LearnPrivacy()
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

struct SignInWithButton: View {
    var logoName: String
    var title: String
    
    var body: some View {
        HStack{
            Image(logoName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 35, alignment: .center)
                .padding(.leading)
            Spacer()
            Text(title)
                .font(.title2)
                .foregroundColor(Color("Text Color"))
                .fontWeight(.medium)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.white)
        .cornerRadius(45)
        .padding(.horizontal, 25)
    }
}

struct UseEmailPart: View {
    var body: some View {
        VStack{
            Text("or use email verification")
                .padding(.top, 30)
                .font(.title3)
            Text("This is a text field and Xcode has a lot of bugs.")
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.black.opacity(0.5))
                .background(Color.white)
                .cornerRadius(50)
                .padding([.bottom,.leading,.trailing], 20)
        }
    }
}

struct LearnPrivacy: View {
    var body: some View {
        VStack {
            Text("Learn how your data is being used.")
            Text("Privacy License")
                .foregroundColor(Color("Primary Color"))
                .fontWeight(.medium)
        }.padding(.bottom, 20)
    }
}
