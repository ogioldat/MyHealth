import SwiftUI

struct CustomGaugeStyle: GaugeStyle {
    private var purpleGradient = AngularGradient(
        gradient: Gradient(colors: [
            Color(red: 255/255, green: 0/255, blue: 128/255),
            Color(red: 255/255, green: 140/255, blue: 0/255),
            Color(red: 64/255, green: 224/255, blue: 208/255),
        ]),
        center: .center,
        startAngle: .degrees(0),
        endAngle: .degrees(200)
    )
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            
            Circle()
                .foregroundColor(Color(.systemGray6))
            
            
            Circle()
                .trim(from: 0, to: 0.75)
                .stroke(Color(.systemGray5), style: StrokeStyle(lineWidth: 30, lineCap: .round))
                .rotationEffect(.degrees(135))
            
            // Progress indicator
            Circle()
                .trim(from: 0, to: 0.75 * configuration.value)
                .stroke(purpleGradient, style: StrokeStyle(lineWidth: 30, lineCap: .round))
                .rotationEffect(.degrees(135))
            
            
            VStack {
                configuration.currentValueLabel
                    .font(.system(size: 60, weight: .bold))
                    .foregroundColor(.gray)
                Text("Steps")
                    .font(.system(.body))
                    .bold()
                    .foregroundColor(.gray)
            }
            
        }
        .frame(width: 300, height: 300)
        
    }
}

struct GoalGauge: View {
    @State var steps = 0
    @State var goal: Double
    
    var body: some View {
        Gauge(value: Double(steps), in: 0...goal) {
            Text("Steps")
        } currentValueLabel: {
            Text(steps.formatted())
        } minimumValueLabel: {
            Text(0.formatted())
        } maximumValueLabel: {
            Text(goal.formatted())
        }
        .tint(Gradient(colors: [.red, .yellow, .green]))
        .gaugeStyle(CustomGaugeStyle())
    }
}

struct GoalGauge_Previews: PreviewProvider {
    static var previews: some View {
        GoalGauge(
            steps: 2404, goal: 5000
        )
    }
}
