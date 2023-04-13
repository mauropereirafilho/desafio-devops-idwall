# Desafios-Devops-Idwall

Fala galera, este repositório se refere há resoluçao de um desafio da empresa IdWall, no qual o mesmo propunha a utilização de duas ferramentas, para execução de duas tarefas.

1. [Terraform](https://github.com/mauropereirafilho/desafio-devops-idwall/tree/main/terraform)
2. [Kubernetes](https://github.com/mauropereirafilho/desafio-devops-idwall/tree/main/kubernetes)


# Terraform

Há tarefa relacionada ao **Terraform**, tinha os seguintes objetivos:

- Criar uma instância **n1-standard-1** (GCP) ou **t2.micro** (AWS) Linux utilizando **Terraform**.
- A instância deve ter aberta somente às portas **80** e **443** para todos os endereços
- A porta SSH (**22**) deve estar acessível somente para um _range_ IP definido.
- **Inputs:** A execução do projeto deve aceitar dois parâmetros:
  - O IP ou _range_ necessário para a liberação da porta SSH
  - A região da _cloud_ em que será provisionada a instância
- **Outputs:** A execução deve imprimir o IP público da instância


## Extras

- Pré-instalar o docker na instância que suba automáticamente a imagem do [Apache](https://hub.docker.com/_/httpd/), tornando a página padrão da ferramenta visualizável ao acessar o IP público da instância
- Utilização de módulos do Terraform

## Notas
- Pode se utilizar tanto AWS quanto GCP (Google Cloud), não é preciso executar o teste em ambas, somente uma.
- Todos os recursos devem ser criados utilizando os créditos gratuitos da AWS/GCP.
- Não esquecer de destruir os recursos após criação e testes do desafio para não haver cobranças ou esgotamento dos créditos.

# Kubernetes

Já a tarefa de Kubernetes, tinham os seguintes objetivos:

- Construir a imagem docker da aplicação, sendo fornecida por eles a [Aplicação](https://github.com/idwall/desafios-devops/tree/master/kubernetes/app), e o [Dockerfile](https://github.com/idwall/desafios-devops/blob/master/kubernetes/Dockerfile). 
- Criar os manifestos de recursos kubernetes para rodar a aplicação (_deployments, services, ingresses, configmap_ e qualquer outro que você considere necessário)
- Criar um _script_ para a execução do _deploy_ em uma única execução.
- A aplicação deve ter seu _deploy_ realizado com uma única linha de comando em um cluster kubernetes **local**
- Todos os _pods_ devem estar rodando
- A aplicação deve responder à uma URL específica configurada no _ingress_


## Extras 
- Utilizar Helm [HELM](https://helm.sh)
- Divisão de recursos por _namespaces_
- Utilização de _health check_ na aplicação
- Fazer com que a aplicação exiba seu nome ao invés de **"Olá, candidato!"**

## Notas

* Pode se utilizar o [Minikube](https://github.com/kubernetes/minikube) ou [Docker for Mac/Windows](https://docs.docker.com/docker-for-mac/) para execução do desafio e realização de testes.

* A aplicação sobe por _default_ utilizando a porta **3000** e utiliza uma variável de ambiente **$NAME**

* Não é necessário realizar o _upload_ da imagem Docker para um registro público, você pode construir a imagem localmente e utilizá-la diretamente.

# Conclusão

Para a explicar como fora executado este projeto, fora criado mais dois README.MD em cada tarefa, para melhor explicação.
* [README kubernetes](https://github.com/mauropereirafilho/desafio-devops-idwall/blob/main/kubernetes/README.md)
* [README terraform](https://github.com/mauropereirafilho/desafio-devops-idwall/blob/main/terraform/README.md)
