//
//  CustomTextField.swift
//  Stocks
//
//  Created by LiewSyetChau on 22/3/22.
//

import SwiftUI

struct CustomTextField: View {
    
    var placeholder: Text
    
    @Binding var text: String
    
    var editingChanged: (Bool) -> Void = { _ in }
    var commit: () -> Void = { }
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { placeholder }
            TextField("",
                      text: $text,
                      onEditingChanged: editingChanged,
                      onCommit: commit)
            
        }
    }
}

