# devsecops-exercises
Integrate Vulnerability Management in DevSecOps cycle


## Prerequisiti

### Base 

Avere un account github (è free) per clonare il repository contentente gli esercizi: 
https://github.com/signup

Avere un pc e portarlo (assieme al caricabatterie)


### Funzionali

#### Effettuare la fork del repository

Per avere autonomia durante gli esercizi, abbiamo identificato come pratica operativa eseguire la fork del nostro repository di partenza.

Di seguito gli step necessari per effettuarla una volta che avete creato l'account GitHub:

https://docs.github.com/en/get-started/quickstart/fork-a-repo


### Docker Hub

Per eseguire uno degli esercizi è necessario avere un account su docker hub, creare una chiave API di accesso ed infine inserirla nella parte secrets sulla repository che andrete a creare.

La creazione dell'account è effettuabile al seguente link:
https://hub.docker.com/signup


Una volta creato l'account sarà possibile generare un access token, questo è effettuabile seguendo gli step al seguente link:
https://docs.docker.com/security/for-developers/access-tokens/


#### Forked Repo docker hub permissions

Una volta eseguito lo step *Docker Hub* potremmo effettuare l'inserimento delle credenziali docker appena generate (**username** + **access token**) sulla nostra repository di cui abbiamo effettuato il fork.

Per effettuarlo, una volta aperta la nostra forked repository, si devono effettuare i seguenti passi:
Cliccare su **Settings** nella navbar superiore a destra.
Nella nuova pagina cliccare sulla sidebar a sinistra **Secrets and variables** e poi su **Actions** nel menu a tendina appena aperto.

Nella pagina che andrà ad aprirsi cliccare su **New repository secret**, e quindi 
ed inserire i seguenti valori:



Name:
DOCKERHUB_USERNAME
Secret:
il vostro utente docker

Name:
DOCKERHUB_PASSWORD
Secret:
la chiave api che avete generato


Come riferimento, ecco la documentazione per la gestione dei secrets si github: https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions



### Extra

Nel caso abbiate un IDE preferito, potete effettuare la clone della repository di cui avete effettuato il fork, effettuando il setup delle configurazioni del client git come di consueto.

#### Generazione chiave SSH su github
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent