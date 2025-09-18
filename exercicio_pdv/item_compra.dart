import 'produto.dart'

class ItemCompra{
        Produto Produto;
        int quantidade;

        ItemCompra(thins.produto, thins.quantidade);

        double calcularSubTotal(){
            return quantidade * produto.valorUnitario;
        }

        @verride
        String toString(){
            return '${produto.nome} - ${quantidade} unid. X R\$ ${produto.valorUnitario().toStringAsFixed(2)} = R\$ ${calcularSubTotal().toStringAsFixed(2)}';
        }
}