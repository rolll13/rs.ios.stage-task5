import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        var profit = 0
        if prices.isEmpty || prices.sorted(by: >)==prices.sorted(by: <){ //проверка на пустой массив и на заполенность одинаковыми элементами
            return profit
        }
        var prices = prices
        var newPrices: [Int] = []

        if prices.min()==prices.last && (prices.removeLast() != 0) && prices.sorted(by: >)==prices.sorted(by: <){ //проверка копии массива что можно купить по цене ниже до поднятия
            return profit
        }
        
        for i in (prices.firstIndex(of: prices.min()!)!)..<prices.count{ 
            newPrices.append(prices[i])
        }
        
        while (newPrices.count>1){
            for _ in 0...newPrices.firstIndex(of: newPrices.max()!)!{
                profit+=(newPrices.max()!-newPrices[0])
                newPrices.remove(at: 0)
                }
        }
        return profit
    }
}
//минимальный элемент -> к максимальному, минимальный не последний, максимальный после минимального
