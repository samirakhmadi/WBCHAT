//
//  MessageRow.swift
//  ChatHW
//
//  Created by Samir on 07.08.2024.
//

import SwiftUI
import ExyteChat

struct MessageRow: View {
    var message: Message
    
    var body: some View {
        HStack {
            if message.isSentByCurrentUser {
                Spacer()
                VStack(alignment: .trailing) {
                    messageView
                        .background(Color.purple)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                    timestampView
                }
                .padding(.horizontal)
            } else {
                VStack(alignment: .leading) {
                    messageView
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    timestampView
                }
                .padding(.horizontal)
                Spacer()
            }
        }
        .padding(.vertical, 4)
    }
    
    @ViewBuilder
    var messageView: some View {
        switch message.type {
        case .text:
            Text(message.content)
                .padding()
        case .image:
            Image("godzilla") // Replace with actual image loading logic
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10)
                .padding()
        case .audio:
            HStack {
                Image(systemName: "play.circle.fill")
                Text("Voice Message")
            }
            .padding()
        }
    }
    
    var timestampView: some View {
        Text("\(message.timestamp, formatter: dateFormatter)")
            .font(.caption)
            .foregroundColor(.gray)
    }
}

private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm"
    return formatter
}()
