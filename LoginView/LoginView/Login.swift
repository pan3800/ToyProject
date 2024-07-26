//
//  Login.swift
//  LoginView
//
//  Created by 임채성 on 2024/07/26.
//

import SwiftUI

extension Color {
    static let customBackground = Color(UIColor(red: 247/255, green: 248/255, blue: 250/255, alpha: 1.0))
}

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.customBackground.edgesIgnoringSafeArea(.all)
            
            Spacer()
            
            VStack (alignment: .leading, spacing: 20) {
                Text("Welcome Back!")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    
                
                Text("Lorem ipsum dolor sit amet, consectetur " + "\n" + "adipising elist sed do eiusmod tempor")
                    .padding(.bottom, 20)
                    
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 1)
                    .border(Color.customBackground)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
