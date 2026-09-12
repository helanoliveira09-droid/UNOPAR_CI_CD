Aqui está um exemplo de README.md para o código fornecido:

---

# Pipeline de Construção e Notificação

Este é um exemplo de pipeline de construção e notificação usando o GitLab CI/CD com Docker. O pipeline consiste em três estágios: pré-construção, construção e notificação. Ele constrói uma imagem Docker, executa um script Python e envia notificações com base no resultado da execução.

## Estágios do Pipeline

### 1. Pré-construção (`pre-build`)

- **Serviços**: Docker in Docker (docker:dind)
- **Script**:
  - Atualiza informações do Docker
  - Realiza login no registro de contêineres do GitLab
  - Constrói a imagem Docker
  - Tag e push da imagem para o Docker Hub

### 2. Construção (`build`)

- **Imagem Base**: Imagem Docker construída no estágio anterior
- **Serviços**: Docker in Docker (docker:dind)
- **Dependências**: Pré-construção (`pre-build`)
- **Script**:
  - Executa um script Python para gerar um gráfico simples

### 3. Notificação de Sucesso (`notificacao`)

- **Imagem Base**: Imagem Docker construída no estágio anterior
- **Tags**: `docker`
- **Condição**: Executado em caso de sucesso
- **Script**:
  - Executa um script Python para exibir a hora atual
  - Executa um script shell para enviar uma notificação de sucesso

### 4. Notificação de Falhas (`notificacao`)

- **Imagem Base**: Imagem Docker construída no estágio anterior
- **Tags**: `docker`
- **Condição**: Executado em caso de falha
- **Script**:
  - Executa um script Python para exibir a hora atual
  - Imprime uma mensagem indicando a falha

## Como Usar

1. Clone este repositório.
2. Configure suas credenciais do Docker Hub no GitLab CI/CD.
3. Adicione seu script Python ao diretório do projeto.
4. Substitua `minha-imagem` e `nome_do_docker_hub` pelos seus valores.
