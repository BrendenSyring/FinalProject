import SwiftUI

struct ContentView: View {
    let names = [
        "Akshan: "
        , "Poppy", "Singed", "Maokai", "Quinn", "Vayne", "Olaf", "Ornn", "Camille", "Rengar", "Nasus",
        "Kled", "Zac", "Malphite", "Warwick", "Kayle", "Tryndamere", "Shen", "Fiona", "Urgot", "K’Sante", "Illaoi",
        "Sylas", "Cho’Gath", "Garen", "Irelia", "Gwen", "Jax", "Dr.Mundo", "Darius", "Tahm Kench", "Wukong", "Teemo",
        "Riven", "Vladimir", "Pantheon", "Aatrox", "Udyr", "Kennen", "Gnar", "Volibear", "Gangplank", "Mordekaiser",
        "Yone", "Renekton", "Rumble", "Alkali", "Sion", "Gragas", "Yorick", "Jayce", "Trundle", "Yasuo", "Ahri", "Graves"
        
    ]

    @State private var selectedName: String = ""
    @State private var confirmationMessage: String = ""
    @State private var isNameConfirmed: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Top Counters")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                Text("Enter in a Top Lane champion")
                Link("List of Champions", destination: URL(string: "https://u.gg/lol/top-lane-tier-list")!)
                    .foregroundColor(.blue)
                    .font(.headline)
                Image("default_image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding()
                TextField("Select a name", text: $selectedName)
                    .padding()
                    .autocapitalization(.none)
                    .disableAutocorrection(true)

                NavigationLink(destination: AnotherView(selectedName: $selectedName, isNameConfirmed: $isNameConfirmed, confirmationMessage: $confirmationMessage), isActive: $isNameConfirmed) {
                    Button(action: {
                        self.confirmSelection()
                    }) {
                        Text("Confirm")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                .background(Color.clear)
                .navigationBarHidden(true)

                Text(confirmationMessage)
                    .padding()
                    .foregroundColor(.green)
            }
            .padding()
            .navigationBarTitle("Champion Selector", displayMode: .inline)
        }
    }

    private func confirmSelection() {
        if names.contains(selectedName) {
            confirmationMessage = " \(selectedName) is a valid selection"
            isNameConfirmed = true
        } else {
            confirmationMessage = "Invalid selection"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
