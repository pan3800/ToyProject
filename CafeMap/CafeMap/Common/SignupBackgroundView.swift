//
//  SignupBackgroundView.swift
//  CafeMap
//
//  Created by 임채성 on 2024/08/30.
//

import SwiftUI

struct SignupBackgroundView<Content: View>: View {
    @Environment(\.dismiss) var dismiss
    
    let content: Content
       
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            ZStack {
                content
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
}
