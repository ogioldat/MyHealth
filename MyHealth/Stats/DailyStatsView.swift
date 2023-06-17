//
//  StatsView.swift
//  MyHealth
//
//  Created by Tomek Ogiołda on 15/06/2023.
//

import SwiftUI
import CoreMotion

struct DailyStatsView: View {
    @State private var dailyStats: DailyStats?
    
    private let pedometer = CMPedometer()
    
    private var isPedometerAvailable: Bool {
        return CMPedometer.isPedometerEventTrackingAvailable()
        && CMPedometer.isDistanceAvailable() && CMPedometer.isStepCountingAvailable()
    }
    
    private func updateStats(data: CMPedometerData?) {
        guard let data = data else {
            return
        }
        dailyStats = DailyStats(
            numberOfSteps: data.numberOfSteps.intValue,
            distance: data.distance?.intValue ?? 0,
            floors: data.floorsAscended?.intValue ?? 0
        )
    }
    
    private func initPedometer() {
        if isPedometerAvailable {
            let today = Calendar.current.startOfDay(for: .now)
            pedometer.startUpdates(from: today) { pedometerData, error in
                guard let pedometerData = pedometerData, error == nil else { return }
                
                DispatchQueue.main.async {
                    updateStats(data: pedometerData)
                }
            }
        }
    }
    
    var body: some View {
        NavigationStack{
            DailyStatsDashboard(dailyStats: dailyStats)
        }
        .navigationTitle("Daily statistics")
        .onAppear {
            initPedometer()
        }
    }
    
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        DailyStatsView()
    }
}
