//
//  Copyright © 2019 Peter Barclay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var exampleText = "nunquam titillandus"

    let motto1 = Text("Draco dormiens")

    // not allowed to create one stored property that
    // refers to another stored property
    //
    // e.g. let motto2 = TextField("example1", text: $exampleText)
    //
    // Instead you can use computed property

    var motto2: some View { TextField("example", text: $exampleText) }

    var body: some View {
        VStack {
            motto1
                .foregroundColor(.red)
            motto2
                .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
