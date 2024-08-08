//
//  ChatViewModel.swift
//  ChatHW
//
//  Created by Samir on 07.08.2024.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messages: [Message] = [
        // Initial messages for demonstration
        Message(id: UUID(), type: .image, content: "image_url", isSentByCurrentUser: false, timestamp: Date()),
        Message(id: UUID(), type: .text, content: "Купил годзиллу\n\nКайфы, как тебе?", isSentByCurrentUser: true, timestamp: Date()),
        Message(id: UUID(), type: .text, content: "Годзилла топчик, позже запишу голосом", isSentByCurrentUser: false, timestamp: Date()),
        Message(id: UUID(), type: .audio, content: "audio_url", isSentByCurrentUser: false, timestamp: Date()),
        Message(id: UUID(), type: .text, content: "че каво", isSentByCurrentUser: false, timestamp: Date())
    ]
    
    func sendMessage(_ text: String) {
        let newMessage = Message(id: UUID(), type: .text, content: text, isSentByCurrentUser: true, timestamp: Date())
        messages.append(newMessage)
    }
}


