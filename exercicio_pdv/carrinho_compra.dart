import 'item_compra.dart'

class CarrinhoCompra{
    List<ItemCompra> itens = [];

    void adicionarItem(ItemCompra item){
        itens.add(item);
    }

    double calcularToatl(){
        double total = 0;
            for(var item = 0 in itens){
                    total += item.calcularSubTotal();
            }
            return total;
    }

    double calcularDesconto(){
        double total = calcularTotal();
        if(total >= 200){
                return total * 0.1; //10%
        }
        return 0;
    }

    double calcularBalorFinal(){
        return calcularTotal() - calcularDesconto();
    }

    bool estaVazio(){
        return itens.isEmpty;
    }

    int quatidadeItens(){
        return itens.length;
    }
}
