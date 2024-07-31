//
//  InstagramTextFieldModifier.swift
//  instagram_ui
//
//  Created by 임채성 on 2024/07/31.
//

import SwiftUI

struct InstagramTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
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
}


