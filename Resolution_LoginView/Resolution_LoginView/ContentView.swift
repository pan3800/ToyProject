//
//  ContentView.swift
//  Resolution_LoginView
//
//  Created by 임채성 on 2024/08/06.
//

import SwiftUI

struct ContentView: View {
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
                    print("버튼 클릭")
                } label: {
                    Text("로그인하기")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(width: 363, height: 42)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }
                    
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
