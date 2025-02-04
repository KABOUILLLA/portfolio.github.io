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
Vous devez préciser pour chaque composante essentielle une ou plusieurs
tâche(s) justifiant de sa mobilisation.
Chaque tâche devra faire l'objet d'une sous-section dédiée, identifiée par
un titre de niveau trois (préfixé par `###`), et comportant l'ensemble des
informations relatives à la tâche (contexte, preuve et justification).

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
