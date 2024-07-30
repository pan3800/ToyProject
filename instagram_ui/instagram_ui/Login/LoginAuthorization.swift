//
//  LoginAuthorization.swift
//  instagram_ui
//
//  Created by 임채성 on 2024/07/28.
//

import SwiftUI

struct LoginAuthorization: View {
    var body: some View {
        NavigationStack {
            ZStack {
                GradientBackgroundView()
                VStack {
                    Spacer()
                    
                    Image("instagramLogo2")
                        .resizable()
                        .frame(width: 200, height: 57)
                        .padding(.bottom, 10)
                   
                    Image("image_lion2")
                        .resizable()
                        .frame(width: 100, height: 90)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                        .foregroundColor(Color.gray)
                        .padding(.bottom, 10)
                    
                    Text("pan5158")
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                    
                    Button {
                        print("버튼 클릭")
                    } label: {
                        Text("Log in")
                            .foregroundStyle(.white)
                            .frame(width: 340, height: 42)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                    .padding(.bottom, 20)
                    
                    Link(destination: URL(string: "https://github.com/pan3800")!) {
                        HStack {
                            Text("Switch accounts")
                        }
                    }
                        
                    Spacer()
                    
                    FooterView()
                }
            }
        }
    }
}

struct FooterView: View {
    var body: some View {
        HStack {
            Spacer()
            Text("Don't have an account?")
                .foregroundColor(.gray)
                .padding(.top, 10)
                .padding(.bottom, 10)
            Text("Sign up")
                .foregroundColor(.black)
                .padding(.top, 10)
                .padding(.bottom, 10)
            Spacer()
        }
        .background(Color.white)
    }
}

struct LoginAuthorization_Previews: PreviewProvider {
    static var previews: some View {
        LoginAuthorization()
    }
}
