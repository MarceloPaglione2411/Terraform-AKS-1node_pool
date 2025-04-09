# Terraform-AKS-1node_pool <h1>
Cluster AKS com 1 NodePool

Este projeto implementa um cluster AKS no Azure usando o Terraform. Esta é uma versão do projeto, onde todos os recursos são definidos usando módulos separados.

##  Visão Geral <h2>
Cluster Kubernetes: Versão estável do AKS.

Node Pool: 1 pool de nós (system) para execução de workloads.
Rede: Configuração de rede padrão (kubenet).
Escalabilidade: Fácil ajuste do número de nós conforme demanda.

### Pré-requisitos <h3>
Conta no Azure (Crie uma gratuitamente).
Azure CLI instalado (Instalação).
Terraform instalado (Download).
kubectl (para gerenciar o cluster após a implantação).

### Instalação do kubectl <h3>
Linux (Ubuntu/Debian)
### Baixe a versão mais recente <h3>
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

### Torne o binário executável <h3>
chmod +x kubectl

### Mova para o PATH do sistema <h3>
sudo mv kubectl /usr/local/bin/

### Configurando Acesso ao Cluster AKS <h3>
### 1. Obtenha as credenciais do cluster
Use o Azure CLI para baixar o kubeconfig:  <i> <n> az aks get-credentials --resource-group rg-aks --name aks-cluster <i> <n>

### 2. Teste o acesso <h3>
Liste os nós do cluster para confirmar a conexão: <i> <n>  kubectl get nodes <i> <n>
