//
//  LoginView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/09.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        NavigationStack {
            
            Spacer()
            
            Text("로그인이 필요해요.")
                .font(.system(size: 15))
            
            Button {
                print("zz")
            } label: {
                Text("로그인하기")
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 363, height: 42)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Spacer()
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
