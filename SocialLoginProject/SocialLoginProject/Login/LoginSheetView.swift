//
//  LoginSheetView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/09.
//

import SwiftUI

struct LoginSheetView: View {
    @Binding var isShowing: Bool

    var body: some View {
        NavigationView {
            VStack() {
                Spacer()
                
                Image("instagramLogo2")
                    .resizable()
                    .frame(width: 200, height: 57)
                    .padding(.bottom, 10)
                
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
                
                BlueButtonView {
                    print("로그인 버튼 클릭")
                } label: {
                    Text("Log in")
                }
                             
                VStack {
                    Image("kakao_login")
                        .resizable()
                        .interpolation(.high)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 360, height: 48)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .frame(maxWidth: .infinity)

                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("test")
                        isShowing = false
                    }) {
                        Image(systemName: "xmark")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

//struct LoginSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginSheetView()
//    }
//}
