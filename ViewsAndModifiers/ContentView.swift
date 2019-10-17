//
//  Copyright © 2019 Peter Barclay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("A Title").prominentBlueTitle()
            
            GridStack(rows: 5, columns: 3) { row, column in
                HStack {
                    Text("[")
                    Image(systemName: "\(row * 3 + column).circle")
                    Text(": R\(row), C\(column)")
                    Text("]")
                }
            }
            
            Spacer()
        }
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< self.rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
}

extension View {
    func prominentBlueTitle() -> some View {
        self.modifier(ProminentBlueTitleModifier())
    }
}

struct ProminentBlueTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
