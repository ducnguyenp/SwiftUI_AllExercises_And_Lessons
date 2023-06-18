import SwiftUI

struct ColorPickerView: View {
    @State var backgroundColor = Color (.systemBackground)
    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor
                ColorPicker("Select Color",
                            selection: $backgroundColor)
                .padding ()
            }
            .navigationTitle("Color Picker")
            
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView().preferredColorScheme(.dark)
    }
}

