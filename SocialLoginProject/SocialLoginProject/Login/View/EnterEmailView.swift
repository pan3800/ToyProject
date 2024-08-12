//
//  EnterEmailView.swift
//  SocialLoginProject
//
//  Created by 임채성 on 2024/08/12.
//

import SwiftUI

struct EnterEmailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {

        NavigationStack {
            Text("EnterEmailView")
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

struct EnterEmailView_Previews: PreviewProvider {
    static var previews: some View {
        EnterEmailView()
    }
}
