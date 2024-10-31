# Poder das tabelas fato

Fato é essencial em datawarehouse pois armazena os dados quantitativos do negócio. Cada linha representa um evento . Trabalha em conjunto com a tabela dimensão para respoder quem, como, onde  os dados foram gerados. Sem as tabelas fato teria muitos dados com pouca compreensão.

Tipos de medidas

* Aditiva -> Todas as dimesões tem valores relacionados com a tabela fato.
* Semi-aditiva -> Alguns valores tem relação com as dimensões, as outras sendo opcional
* Não aditiva -> Valores disponibilizados na tabela fato sem que haja correlação obrigatória com as dimensões. 

## Principais tipos de tabelas Fato

* Transacionais ->  Consegue fazer agregações. Representa mais comum
* Agregadas ->  Tabelas que já vem agrupadas em respondem a necessidade específica do negócio.
* Snapshots -> Armazena os eventos que ocorreram em um tempo específico

### Dados transacionais
A tabela fato contém informações e dados transacionais que correspondem a um processo, ou evento gerado pela empresa sobre um assunto. As tabelas dimensões fornecem um contexto para esses dados.

### Replicação de chaves estrangeiras
Várias chaves estrangeiras na tabela fato.

### Volume de transações
As tabelas fato tendem a agrupar grande informações ao longo do tempo.


## Medidas derivadas
São calculadas a partir da existencia de outras medidas na tabela fato.

## Tipos de métricas

Utilizadas para avaliar o desempenho, identificar tendências e tomar decisões complexas.

*   **Métrica razão e proporção** ->  Cálculos feitos para relacionar duas medidias ou mais, com foco em uma perspectiva relacional e não absoluta. Exemplo no projeto petShopArca de noe tem a metrica "taxa de conversão de clientes". Clientes que compram produtos divididos por número de visitantes. Ou a métrica de proporção que é o "percentual de vendas de um determinado produto" em relação às vendas totais.

* **Métricas de vendas** -> Avalia  desempenho de vendas por categoria.  Tem o objetivo de entender quais categorias são mais populares e lucrativas.

* **Métrica de rentabilidade por produto** -> Calcula o retorno financeiro por produto

* **Métrica de eficiência operacional** -> Calcula a efiência e eficácia das operações comerciais. 

Cada uma dessas métricas oferecem insights valiosos.