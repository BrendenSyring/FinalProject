import SwiftUI

struct AnotherView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Yippee")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
        }
        .navigationBarTitle("Confirmed", displayMode: .inline)
    }
}

struct AnotherView_Previews: PreviewProvider {
    static var previews: some View {
        AnotherView()
    }
}
