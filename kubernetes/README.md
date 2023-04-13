# Tarefa Kubernetes

Para concluir a tarefa, decidi utilizar o Minikube para provisionar o cluster **Kubernetes**, e o **Helm** para transpor os manifestos criados, em um `helm chart`. Foram provisionados os seguintes resources.

* Um `deployment` para conter a aplicação, um `service`para export externamente a aplicação, e um `ingress` para fornecer uma URL de acesso.

Para executar o projeto, iremos realizar os seguintes comandos.

* Primeiro, precisamos baixar e descompactar nosso `helm chart`, que está compactado em um pacote `.tgz`.

```bash
tar -xvf desafio-devops-0.1.0.tgz
```

* Após este comando, será criado uma pasta com o nome `desafio-devops`.
* Dentro da pasta, iremos utilizar o seguinte comando.

```bash
helm install desafio-devops --namespace NAMESPACE_DESEJADA .
```
* Lembrando, é necessário ter o `.`, para que o **Helm** entenda que o `helm chart`, esta no nosso diretório atual.

* Se tudo estiver ok, os manifestos serão criados no nosso cluster **Kubernetes**.


## Considerações

* Para que o provisionamento funcione, será necessário um cluster **Kubernetes**. No meu caso utilizei o [Minikube](https://minikube.sigs.k8s.io/docs/start/) para facilitar o procedimento, pois é um cluster **Kubernetes** bem leve.

* Também será necessário baixar o [Helm](https://helm.sh/docs/intro/install/), para que a criação, e execução do `helm chart` funcione.

* Para facilitar a transposição dos manifestos, para `helm chart`, utilizei a ferramenta [Helmify](https://github.com/arttor/helmify/releases) que é um binário que realiza este procedimento facilmente.

* A ferramenta [kubectl](https://kubernetes.io/docs/tasks/tools/) também será necessária, para realizarmos tarefas a nível de cliente no cluster.

* Quando executamos a instalação do nosso `helm chart`, com o comando `helm install desafio-devops --namespace NAMESPACE_DESEJADA`, a `NAMESPACE` deve ser criada anteriormente, pois se não, o **Helm** **não** irá encontrar a namespace desejada. Comando para a criação da namespace, é o seguinte.

```bash
kubectl create namespace NOME_DA_NAMESPACE_DESEJADA
```

* O campo `--namespace`no comando `helm install desafio-devops --namespace NAMESPACE_DESEJADA .` é fundamental para que o **Helm**, crie os manifestos na namespace desejada. Caso utilizassemos o comando `helm install desafio-devops --namespace .`, o **Helm** criaria os manifestos na namespace `default`, o que não é uma boa prática.