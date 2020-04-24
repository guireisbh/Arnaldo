//Versão do solidity
pragma solidityˆ0.4.12
//Inicio do Smartcontract de ICO
contract ArnaldoCoin_ICO {
    unit public max_ArnaldoCoin = 1000000000;
    unit public usd_to_ArnaldoCoin = 100;
    unit public total_ArnaldoCoin_bought = 0;
    
    mapping(address => unit) equity_ArnaldoCoin;
    mapping(address => unit) equity_usd;
    
    modifier can_buy_ArnaldoCoin(unit usd_invested){
        require (usd_invested * usd_to_ArnaldoCoin + total_ArnaldoCoin_bought <= max_ArnaldoCoin);
        _;
    }
//Retorna o valor de investimento
    function equity_in_ArnaldoCoin(address investor) external constant returns(unit){
        return equity_ArnaldoCoin[investor];
    }
//Retorna o valor de investimento em usd
    function equity_usd(address investor) external constant returns(unit){
        return equity_usd[investor];
    }
//Compra de ArnaldoCoin
    function buy_ArnaldoCoin(address investor, unit usd_invested) external
    can_buy_ArnaldoCoin(usd_invested) {
        unit ArnaldoCoin_bought = usd_invested * usd_to_ArnaldoCoin;
        equity_ArnaldoCoin[investor] += ArnaldoCoin_bought;
        equity_usd[investor] = equity_ArnaldoCoin[investor] / 100;
        total_ArnaldoCoin_bought + ArnaldoCoin_bought;
    }
//Venda de ArnaldoCoin
    function sellArnaldoCoin(address investor, unit ArnaldoCoin_sold) external {
        equity_ArnaldoCoin[investor] -= ArnaldoCoin_sold
        equity_usd[investor] = equity_ArnaldoCoin[investor] / 100;
        total_ArnaldoCoin_bought -= ArnaldoCoin_bought;
    }
}
