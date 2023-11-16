# devsecops-exercises
Integrate Vulnerability Management in DevSecOps cycle


## Prerequisiti

### Base 
Per accedere al repository contenente gli esercizi è necessario avere un account GitHub (è free):
https://github.com/signup

Portare con se il PC e il caricabatterie.


### Funzionali

#### Effettuare la fork del repository

Per avere autonomia durante gli esercizi, abbiamo identificato come pratica operativa quella di eseguire la fork del nostro repository di partenza.

Di seguito gli step necessari per effettuarla una volta che avrete creato l'account GitHub:

https://docs.github.com/en/get-started/quickstart/fork-a-repo


### Docker Hub

Per eseguire uno degli esercizi è necessario avere un account su docker hub, creare una chiave API di accesso ed infine inserirla nella parte secrets sulla repository che andrete a creare.

La creazione dell'account è effettuabile al seguente link:
https://hub.docker.com/signup


Una volta creato l'account sarà possibile generare un access token, questo è effettuabile seguendo gli step al seguente link:
https://docs.docker.com/security/for-developers/access-tokens/


#### Forked Repo docker hub permissions

Una volta eseguito lo step *Docker Hub* dovete effettuare l'inserimento delle credenziali docker appena generate (**username** + **access token**) sulla repository di cui avete effettuato il fork.

Per effettuarlo, dovrete effettuare i seguenti passi:
1. Accedere al link della repository di cui avete effettuato la fork (e.g. https://github.com/pluribus-one/devsecops-exercises-1)
2. Cliccate su **Settings** nella navbar superiore a destra.
3. Nella nuova pagina, nella sidebar a sinistra, cliccate **Secrets and variables** e successivamente **Actions** nel menu a tendina appena aperto.
4. Nella nuova pagina, cliccate su **New repository secret**, e compilate la form inserendo i seguenti campi


    | Name | Secret |
    | :---|---:|
    | **DOCKERHUB_USERNAME** | il vostro utente docker |
    | **DOCKERHUB_PASSWORD**   | la chiave api che avete generato |


Come riferimento, ecco la documentazione per la gestione dei secrets di github: https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions



### Extra

Nel caso abbiate un IDE preferito, potete effettuare la clone della repository di cui avete effettuato il fork, effettuando il setup delle configurazioni del client git come di consueto.

#### Generazione chiave SSH su github
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent