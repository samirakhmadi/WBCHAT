//
//  MessageInputView.swift
//  ChatHW
//
//  Created by Samir on 07.08.2024.
//

import SwiftUI

struct MessageInputView: View {
    @State private var messageText: String = ""
    var viewModel: ChatViewModel
    
    var body: some View {
        HStack {
            TextField("Good mor", text: $messageText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                viewModel.sendMessage(messageText)
                messageText = ""
            }) {
                Image(systemName: "paperplane.fill")
                    .rotationEffect(.degrees(45))
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .clipShape(Circle())
            }
        }
    }
}





