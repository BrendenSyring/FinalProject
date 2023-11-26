import SwiftUI

struct AnotherView: View {
    @Binding var selectedName: String
    @Binding var isNameConfirmed: Bool
    @Binding var confirmationMessage: String

    var body: some View {
        VStack {
            Spacer()
            Text("You picked \(selectedName).")
                .font(.largeTitle)
                .fontWeight(.bold)
                
                
            Spacer()
        }
        .navigationBarTitle("Confirmed", displayMode: .inline)
    }
}
