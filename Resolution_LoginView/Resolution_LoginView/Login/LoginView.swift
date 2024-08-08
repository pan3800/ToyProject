//
//  LoginView.swift
//  Resolution_LoginView
//
//  Created by 임채성 on 2024/08/06.
//

import SwiftUI

struct LoginView: View {
    //@State var isShowingSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("로그인이 필요해요")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                Text("다짐에서만 누릴 수 있는 혜택을 받아오세요!")
                    .padding(.top, 1)
                    .fontWeight(.light)
                
                Button {
                //print("test")
                  // isShowingSheet.toggle()
                } label: {
                    Text("로그인하기")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(width: 363, height: 42)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
//                .sheet(isPresented: $isShowingSheet) {
//                    LoginAuthView(isPresented: $isShowingSheet)
//                }
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
