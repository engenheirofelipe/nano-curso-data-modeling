# Projeto de solução de Datawarehou

1.  Origem dos dados
2.  Stage Area
3.  Datawarehouse corporativo
4.  Visualização dos dados

Esses processos faz parte da solução de datawarehouse / Businnes Intelligence proposta por Ralph Kimball

1.  As origems dos dados podem ser realizadas por diferentes sistemas operacionais. É comum uma empresa ter ERP para operações principais e um sistema de RH ou jurídico de outro fornecedor, o que implica na existência de banco de dados diferentes. O sistema ERP pode ser uma banco de dados Oracle em seu data center, mas o RH pode usar um sistema SQL armazenado em nuvem.

Para arquivos de origem é muito comum o arquiteto de datawarehouse integrar diferentes arquivos, XML e planilhas. Então o arquiteto ter que estar ciente desses diferentes arquivos para uma melhor organização do datawarehouse. 

A extração é o primeiro passo do processo. É capaz de interpretar a origem dos dados, e carregar os dados necessários para a etapa de Stage Area.

*   Big Data pode ser uma fonte valiosa para origem dos dados, pois contém volumes massivos. Sistema de Big Data como Hadoop ou Spark capturam informações de diversas fontes, como redes sociais , transações online, sensores. 


2.  Stage Area tem uma analogia com uma cozinha de restaurante, segundo Ralph Kimbol. O processo de tranformação irá preparar os dados para carga  do DW. 

* Kimball deixou claro que se um funcionário não faz parte dp time de ETL, mantenha distância da Stage Area.
 A Stage Area é exclusiva da equipe ETL.  Além disso relatórios não devem acessar a Stage Area.

 Kimball sugere que a stage area seja configurada em uma banco de dados, para o qual elenca as seguintes atividades.

 1. Metadados aparentes.
 2. Capacidades relacionais.
 3. Repositório aberto 
 4. Suporte ao DBA
 5. Interface SQL

 Segundo kimball, os esforços da modelagem devem se concentrar nos data marts, não na stage area. 

 *  A primeira tabela a ser modelada na stage area é a tabela de LOG. Para extração de dados de diferentes fontes, é essencial a tabela log pois :

    1.  Rastreia as atividades de carga dos dados, quem a executou, data de execução , iniciada e concluída

    2.  A tabela LOG, fornece infomações de onde e porque um erro ocorreu. Facilita a resolução de problemas.

    3.  Contem estatística de desempenho , como tempo necessário para realizar a carga.



3.  O Datawarehouse é um banco de dados "informacional" de um projeto de businnes intelligence. Provém informações com facilidade e simplicidade para tomadores de decisão. O DW foi projetado não para realizar operações transacionais , mas para garantir consultas. 

* Definição  de Data Mart segundo Kimball

Modelo dimensional (estrela) construído para atender determinado processo de negócio. Cada modelo estrela representa um data mart no DW de kimball.

4.  A visualização cria relatórios  , para explorar dados identificar tendências e tomar decisões.  Além disso, ferramentas de BI permite consultas e análises AD e HOC. 

E também oferece dashboards interativos para ver indicadores de desempenho (KPIs) . As ferramentas também possuem relatórios programados. Agenda relatórios automatizados. 


* Análise OLAP (online analytical processing) ->  Utilizam cubos tridimensionais para identificar características dos dados em diferentes dimensões. 

    Existem duas principais categorias :

    1.  MOLAP -> Pré-calcula dados para consultas rápidas.
    2.  ROLAP -> Processa consultas em tempo real.

    Os cubos vão permitir a extração de insights valiosos


* As ferramentas de BI, podem fazer integração com o DW. Acessam os dados do Datawarehouse para fazer melhores relatórios. 

* Suporte à conformidade e auditoria -> Para manter a integridade e transparência no processo de análise de dados, muitas ferramentas de BI restreia atividades.

* Acesso a dados externos, como feeds na nuvem, Google analytics e planilhas do excel.


# Silos de Dados

Ocorrem quando empresas constroem banco de dados e datsets independentemente do Datawarehouse.  Os silos de dados podem  ter informações extraídas do datawarehouse pelos próprios usuários, muitas vezes utilizando ferramentas de BI.  


# O ETL

É a base do Datwarehouse. Extrai dados dos sistemas de origem, aplica qualidade e consistência dos dados , e entrega os dados prontos para formato de apresentação. 

A missão da equipe de ETL é construir a infraestrutura do datawarehouse. E possui três tópicos :

1.  Facilita a entrega de dados ao usuário final.
2.  Acrescenta valor aos dados, por conta da limpeza.
3.  Protege e documenta a origem dos dados.

Em toda equipe, otime deve apoiar :

1.  Extração de dados de fontes originais
2.  Garantia e qualidade da limpeza dos dados
3.  Conformidade dos rótulos e medidas nos dados para alcançar consistência entre as fontes originais
4.  Entrega dos dados em um formato físico utilizável por ferramentas de consulta, redatores e relatórios e painéis.


