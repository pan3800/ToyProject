//
//  InstagramLoginView.swift
//  instagram_ui
//
//  Created by 임채성 on 2024/07/30.
//

import SwiftUI

struct InstagramLoginView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                Spacer()
                
                Image("instagramLogo2")
                    .resizable()
                    .frame(width: 200, height: 57)
                    .padding(.bottom, 25)
                
                VStack (spacing: 10) {
                    TextField("이메일 주소", text: .constant(""))
                        .textInputAutocapitalization(.never)
                        .padding(12)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        }
                        .padding(.horizontal)
                    
                    SecureField("비밀번호", text: .constant(""))
                        .textInputAutocapitalization(.never)
                        .padding(12)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        }
                        .padding(.horizontal)
                }
                HStack {
                    Spacer()
                    Text("Forgot password?")
                        .foregroundColor(.blue)
                        .padding(.trailing, 20)
                        .padding(.top, 5)
                        .padding(.bottom, 20)
                }
                
                NavigationLink {
                    InstagramLoginView()
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 42)
                        .background(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                
                HStack {
                    Image("instagramLogo")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.top, 20)
                    
                    Text("Log in with instagram")
                        .foregroundColor(Color.blue)
                        .padding(.top, 20)
                }
                
                HStack {
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1)
                        .padding(.leading, 20)// 수평선의 두께
                    Text("OR")
                        .padding(.horizontal, 10)
                        .foregroundColor(.gray)
                    Rectangle()
                        .fill(Color.gray)
                        .frame(height: 1) // 수평선의 두께
                        .padding(.trailing, 20)
                }
                .padding(.vertical, 20) // HStack의 수직 여백 추가
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(Color.gray)
                    Text("Sign up")
                        .foregroundColor(Color.blue)
                }
                
                Spacer()
                
            }
        }
        .navigationBarBackButtonHidden(true)
               .navigationBarBackButtonHidden(true)
                   .navigationBarItems(leading: Button(action: {
                       dismiss()
                   }) {
                       Image(systemName: "chevron.left")
                           .foregroundColor(.blue)
                   })
    }
}



struct InstagramLoginView_Previews: PreviewProvider {
    static var previews: some View {
        InstagramLoginView()
    }
}
