import SwiftUI

struct KeyboardToolbarView: View {
    var body: some View {
        VStack {
            Text(".largetTitle")
                .font(.largeTitle)
            Text(".title")
                .font(.title)
            Text(".title2")
                .font(.title2)
            Text(".title3")
                .font(.title3)
            Text(".headline")
                .font(.headline)
            Text(".subheadline")
                .font(.subheadline)
            Text(".body")
                .font(.body)
            Text(".footnote")
                .font(.footnote)
            Text(".caption")
                .font(.caption)
        }
//        - `.largeTitle`: Tamaño muy grande (como un encabezado).
//        - `.title`: Tamaño de título estándar.
//        - `.headline`: Tamaño usado para encabezados pequeños.
//        - `.subheadline`: Tamaño para subtítulos.
//        - `.body`: Tamaño estándar para texto en párrafos.
//        - `.footnote`: Tamaño pequeño.
//        - `.caption`: Tamaño muy pequeño, ideal para descripciones.
    }
}


#Preview {
    KeyboardToolbarView()
}
