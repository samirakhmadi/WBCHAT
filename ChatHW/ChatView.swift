//
//  ContentView.swift
//  ChatHW
//
//  Created by Samir on 07.08.2024.
//

import SwiftUI

struct ChatView: View {
    @ObservedObject var viewModel = ChatViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    CustomNavigationBar()  // Add the top bar here
                    
                    ForEach(viewModel.messages) { message in
                        MessageRow(message: message)
                    }
                }
            }
            
            MessageInputView(viewModel: viewModel)
                .padding()
        }
    }
}


