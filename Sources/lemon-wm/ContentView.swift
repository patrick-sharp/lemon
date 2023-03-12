import SwiftUI

enum CountType: String, Codable, CaseIterable {
    case one = "One",
    two = "Two",
    three = "Three"

    var type: String {
        switch self {
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        }
    }
}

struct MyStruct: Codable {
    let status: Int
    let response: String
    let joke: String
    let type: String
}

struct ContentView: View {
    @State private var myString = "default"
    @State private var fetching = false
    @AppStorage("myType") var count: CountType  = .one
    var body: some View {
        VStack {
            Text("Hello, world!")
            HStack(alignment: .center) {
                Image(systemName: "globe")
                    .resizable()
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                VStack {
                    ForEach(CountType.allCases, id: \.self) { item in
                        Button {

                        } label: {
                            Text(item.rawValue)
                                .foregroundColor(item == count ? .red : Color.primary)
                        }
                    }
                }.frame(height: 130)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
