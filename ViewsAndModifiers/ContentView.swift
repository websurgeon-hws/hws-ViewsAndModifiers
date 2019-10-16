//
//  Copyright © 2019 Peter Barclay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false

    var body: some View {
        VStack(spacing: 40) {
            VStack {
                Text("Gryffindor")
                    .font(.largeTitle) // overrides VStack environment modifier
                Text("Hufflepuff")
                Text("Ravenclaw")
                Text("Slytherin")
            }
            .font(.title) // environment modifier
            
            VStack {
                Text("Gryffindor")
                    .blur(radius: 0) // adds additional modifier
                // and so does not remove blur from this Text!
                
                Text("Hufflepuff")
                Text("Ravenclaw")
                Text("Slytherin")
            }
            .blur(radius: 5) // regular modifier
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
