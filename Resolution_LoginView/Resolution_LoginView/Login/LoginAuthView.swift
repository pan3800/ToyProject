//
//  LoginAuthView.swift
//  Resolution_LoginView
//
//  Created by 임채성 on 2024/08/06.
//

import SwiftUI

struct LoginAuthView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("아이디")
                    .foregroundStyle(.gray)
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                TextField("이메일을 입력해 주세요.", text: .constant(""))
                    .modifier(TextFieldModifier())
                
                Text("비밀번호")
                    .foregroundStyle(.gray)
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                ZStack {
                    SecureField("비밀번호", text: .constant(""))
                        .modifier(TextFieldModifier())
                }
            }
        }
    }
}

struct LoginAuthView_Previews: PreviewProvider {
    static var previews: some View {
        LoginAuthView()
    }
}
