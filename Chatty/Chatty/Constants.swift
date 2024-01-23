//
//  Constants.swift
//  Chatty
//
//  Created by Julia Pabst on 23.01.24.
//

struct Constants {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerSegue = "RegisterToChat";
    static let logInSegue = "LogInToChat";
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
