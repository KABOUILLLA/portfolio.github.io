# Portfolio - BUT Informatique

Ce projet vise à fournir une base de portfolio pour les étudiants en BUT
Informatique.
Ce document doit permettre de justifier la mobilisation des différentes
compétences du diplôme en collectant un ensemble de traces, à savoir :

- une *preuve* dont l'étudiant est l'auteur : un extrait de code (par exemple en
  référençant un *commit* dans un projet particulier), un diagramme, une
  capture d'écran, une vidéo, ...

- un *commentaire* mettant en lien le travail de l'étudiant avec la mobilisation
  de l'une des compétences du diplôme.

## Fonctionnement du portfolio

Le portfolio proposé dans ce projet est rédigé en utilisant le format
[Markdown](https://www.azur-web.com/astuces/markdown-memento-balise),
et compilé en PDF à l'aide de [Pandoc](https://pandoc.org/).

Le répertoire [md](md) contient plusieurs fichiers Markdown (un par compétence)
fournissant un modèle que les étudiants peuvent compléter en y apportant les
traces justifiant de la mobilisation des compétences correspondantes.

Pour pouvoir compiler le document, vous aurez besoin de récupérer le template
[eisvogel](https://gitlab.univ-artois.fr/cril-tools-by-rwa/eisvogel.git).

```bash
git submodule update --remote --init
```

Ou, dès la récupération du projet :

```bash
git clone --recurse-submodules https://gitlab.univ-artois.fr/sae-dept-info/portfolio.git
```

Si vous disposez de Pandoc sur votre machine équipée d'un système Unix, vous
pouvez utiliser la commande suivante pour compiler le portfolio :

```shell
./make-portfolio.sh
```

Vous pouvez également directement éditer le sujet sur GitLab depuis le Web IDE,
ce qui produira automatiquement une nouvelle version PDF du portfolio,
disponible [ici](/../builds/artifacts/main/file/portfolio.pdf?job=portfolio). 

## Fonctionnement du bilan des SAÉ et des stages

Une version « compacte » du portfolio peut également être rédigée sous la
forme de tableaux visant à lister chacune des tâches réalisées par l'étudiant
et mentionnées dans son portfolio, en la positionnant dans la compétence
appropriée.

Le répertoire [sae](sae) contient plusieurs fichiers Markdown (un par SAÉ et un
par stage) fournissant un modèle que les étudiants peuvent compléter en y
référençant les différentes tâches, et en précisant (éventuellement) les pages
du portfolio mentionnant ces tâches.

Si vous disposez de Pandoc sur votre machine équipée d'un système Unix,
ces bilans peuvent être compilés à l'aide de la commande :

```shell
./make-tables.sh
```

Ils peuvent également être téléchargés directement en choisissant le bilan
souhaité ci-dessous :

- [SAE S3.01](/../builds/artifacts/main/file/SAE3.pdf?job=tables)
- [SAE S4.A.01](/../builds/artifacts/main/file/SAE4.pdf?job=tables)
- [SAE S4.St](/../builds/artifacts/main/file/ST4.pdf?job=tables)
- [SAE S5.A.01](/../builds/artifacts/main/file/SAE5.pdf?job=tables)
- [SAE S6.A.01](/../builds/artifacts/main/file/SAE6.pdf?job=tables)
- [SAE S6.St](/../builds/artifacts/main/file/ST6.pdf?job=tables)
