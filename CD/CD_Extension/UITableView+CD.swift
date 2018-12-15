//Created  on 2018/12/13  by LCD :https://github.com/liucaide .

import Foundation

public extension CD where Base: UITableView {
    func cell(_ id:String, _ cellClass:AnyClass) -> UITableViewCell{
        var cell = base.dequeueReusableCell(withIdentifier: id)
        if cell == nil  {
            let bundle = Bundle.main.path(forResource:id, ofType: "nib")
            if bundle == nil{
                base.register(cellClass, forCellReuseIdentifier: id)
            }else{
                let nib = UINib(nibName: id, bundle: nil)
                base.register(nib, forCellReuseIdentifier: id)
            }
            cell = base.dequeueReusableCell(withIdentifier: id)
        }
        return cell ?? UITableViewCell()
    }
}