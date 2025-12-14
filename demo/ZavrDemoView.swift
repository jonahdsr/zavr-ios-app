import SwiftUI

struct ZavrDemoView: View {
    let monthlyIncome: Double = 4200
    let monthlyBudget: Double = 3100

    var remaining: Double {
        monthlyIncome - monthlyBudget
    }

    var body: some View {
        VStack(spacing: 24) {
            Text("Zavr")
                .font(.largeTitle)
                .fontWeight(.bold)

            VStack(alignment: .leading, spacing: 12) {
                Text("Monthly Overview")
                    .font(.headline)

                HStack {
                    Text("Income")
                    Spacer()
                    Text("$\(Int(monthlyIncome))")
                        .fontWeight(.semibold)
                }

                HStack {
                    Text("Budgeted")
                    Spacer()
                    Text("$\(Int(monthlyBudget))")
                        .foregroundColor(.orange)
                }

                HStack {
                    Text("Remaining")
                    Spacer()
                    Text("$\(Int(remaining))")
                        .foregroundColor(remaining >= 0 ? .green : .red)
                }
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(12)

            VStack(alignment: .leading, spacing: 12) {
                Text("Savings Goals")
                    .font(.headline)

                GoalRow(title: "Short Term", amount: 400)
                GoalRow(title: "Long Term", amount: 600)
                GoalRow(title: "Holiday", amount: 250)
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(12)

            Spacer()
        }
        .padding()
    }
}

struct GoalRow: View {
    let title: String
    let amount: Double

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text("$\(Int(amount))")
                .fontWeight(.medium)
        }
    }
}

#Preview {
    ZavrDemoView()
}
