# Tarefa Terraform

Para concluir a tarefa, decidi utilizar a GCP como cloud provider, para testar meus conhecimentos em um provedor diferente, e também utilizar os créditos disponíveis que o provider forneceu, para novos usuários. Foram provisionados os seguintes resources.

* Uma `VPC` para o projeto, uma `VM`, e um `FIREWALL` para controle de acesso as portas.

Para executar o projeto, iremos realizar os seguintes comandos.

```bash
terraform init
```

* Pois o comando irá baixar os modulos necessários para o projeto.
* Logo em seguida, podemos executar um comando para que o mesmo faça um planejamento da infraestrutura, e garanta que o código não possui problemas.

```bash
terraform plan -var="region=REGIAO_QUE_DESEJA_SUBIR_O_PROJETO" -var="zone=ZONA_QUE_DESEJA_SUBIR_O_PROJETO" -var="ssh_ip_range=IP_PUBLICO_PARA CONEXÂO_VIA_SSH"
```
* Se tudo estiver ok, podemos de fato subir nossa infra, com o o seguinte comando.

```bash
terraform apply -auto-approve -var="region=REGIAO_QUE_DESEJA_SUBIR_O_PROJETO" -var="zone=ZONA_QUE_DESEJA_SUBIR_O_PROJETO" -var="ssh_ip_range=IP_PUBLICO_PARA CONEXÂO_VIA_SSH"
```

## Considerações

* Para que o provisionamento funcione, será necessário criar uma [chave](https://console.cloud.google.com/projectselector2/iam-admin/serviceaccounts?supportedpurview=project) para validar o acesso a sua conta da GCP.

* No arquivo `provider.tf`, o campo `project`, deve ser substituído pelo ID do seu projeto.

* Se não for passado as variáveis de **region**,**zone**, e **ssh_ip_range**, o projeto não vai funcionar.
    - Caso tenha dúvida de [região](https://cloud.google.com/compute/docs/regions-zones?hl=pt-br) e [zona](https://cloud.google.com/compute/docs/regions-zones?hl=pt-br) usar.
    - Caso tenha duvida de qual é seu [IP](https://meuip.io/) usar

* Uma boa prática que poderia ser adotada, seria salvar o arquivo `.tfstate`em um GCS. Mas o procedimento não fora adotado, pois não fazia parte do escopo do projeto.
