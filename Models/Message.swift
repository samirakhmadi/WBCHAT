//
//  Message.swift
//  ChatHW
//
//  Created by Samir on 07.08.2024.
//

import Foundation

enum MessageType {
    case text, image, audio
}

struct Message: Identifiable {
    let id: UUID
    let type: MessageType
    let content: String
    let isSentByCurrentUser: Bool
    let timestamp: Date
}

