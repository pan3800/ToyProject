//
//  EnterUsernameView.swift
//  instagram_ui
//
//  Created by 임채성 on 2024/07/31.
//

import SwiftUI

struct EnterUsernameView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("사용자 이름 만들기")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
                
                Text("사용자 이름을 직접 추가하거나 추천 이름을 사용하세요. 언제든지 변경할 수 있습니다.")
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                
                TextField("사용자 이름", text: .constant(""))
                    .modifier(InstagramTextFieldModifier())
                
                Button {
                    print("다음")
                } label: {
                    Text("다음")
                        .foregroundStyle(.white)
                        .frame(width: 363, height: 42)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
                Spacer()

            }
        }
    }
}

struct EnterUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        EnterUsernameView()
    }
}
