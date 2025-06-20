import SwiftUI

struct TogglePlaygroundView: View {
    @State private var toggleLabel: String = "Toggle Label"
    @State private var isOn: Bool = false
    @State private var hideLabel: Bool = false
    @State private var selectedColor: Color = .blue
    @State private var toggleStyle: ToggleStyleType = .switchStyle
    @State private var showOnChangeOutput: Bool = false
    @State private var lastToggleValue: Bool = false

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            // 🔘 Live Toggle (conditionally styled)
            Group {
                switch toggleStyle {
                case .switchStyle:
                    if hideLabel {
                        Toggle("", isOn: $isOn)
                            .labelsHidden()
                            .toggleStyle(SwitchToggleStyle())
                    } else {
                        Toggle(toggleLabel, isOn: $isOn)
                            .toggleStyle(SwitchToggleStyle())
                    }

                case .buttonStyle:
                    if hideLabel {
                        Toggle("", isOn: $isOn)
                            .labelsHidden()
                            .toggleStyle(ButtonToggleStyle())
                    } else {
                        Toggle(toggleLabel, isOn: $isOn)
                            .toggleStyle(ButtonToggleStyle())
                    }
                }
            }
            .frame(width: 180)
            .tint(selectedColor)
            .onChange(of: isOn) { oldValue, newValue in
                if showOnChangeOutput {
                    lastToggleValue = newValue
                }                    
            }

            Spacer()

            // 💻 Simulated Code Output
            Text(simulatedCode)
                .font(.system(.body, design: .monospaced))
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)

            // 🛠️ Form
            Form {
                Section(header: Text("Label")) {
                    Toggle("Hide label", isOn: $hideLabel)
                    TextField("Toggle Label", text: $toggleLabel)
                        .disabled(hideLabel)
                }

                Section(header: Text("Style & Color")) {
                    Picker("Toggle Style", selection: $toggleStyle) {
                        Text("Switch").tag(ToggleStyleType.switchStyle)
                        Text("Button").tag(ToggleStyleType.buttonStyle)
                    }
                    .pickerStyle(.segmented)

                    ColorPicker("Color", selection: $selectedColor)
                }

                Section(header: Text("onChange Output")) {
                    Toggle("Simulate onChange", isOn: $showOnChangeOutput)
                    if showOnChangeOutput {
                        Text("Output: Toggle is now \(lastToggleValue ? "ON" : "OFF")")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Toggle Playground")
    }

    // 🧩 Simulated code string
    private var simulatedCode: String {
        var code = "Toggle(\(hideLabel ? "\"\"" : "\"\(toggleLabel)\""), isOn: $isOn)"
        switch toggleStyle {
        case .buttonStyle:
            code += "\n    .toggleStyle(ButtonToggleStyle())"
        case .switchStyle:
            code += "\n    .toggleStyle(SwitchToggleStyle())"
        }

        if hideLabel {
            code += "\n    .labelsHidden()"
        }

        code += "\n    .tint(.\(colorName))"

        if showOnChangeOutput {
            code += "\n    .onChange(of: isOn) { oldValue, newValue in ... }"
        }

        return code
    }

    // 🧩 Color description simplification
    private var colorName: String {
        switch selectedColor {
        case .red: return "red"
        case .blue: return "blue"
        case .green: return "green"
        case .orange: return "orange"
        case .purple: return "purple"
        default:
            let color = UIColor(selectedColor)
            if let components = color.cgColor.components, components.count >= 3 {
                let red = Int(components[0] * 255)
                let green = Int(components[1] * 255)
                let blue = Int(components[2] * 255)
                return "Color(red: \(red), green: \(green), blue: \(blue))"
            }
            return "custom"
        }
    }

    enum ToggleStyleType: Hashable {
        case switchStyle, buttonStyle
    }
}

#Preview {
    TogglePlaygroundView()
}
