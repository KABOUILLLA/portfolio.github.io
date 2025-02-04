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
[Markdown](https://www.arthurperret.fr/tutomd/), et compilé en PDF à l'aide de
[Pandoc](https://pandoc.org/).

Pour commencer, les informations identifiant l'étudiant doivent être saisies
dans le [fichier de métadonnées](md/metadata.md).

Le répertoire [md](md) contient d'autres fichiers Markdown (un par compétence)
fournissant un modèle que les étudiants peuvent compléter en y apportant les
traces justifiant de la mobilisation des compétences correspondantes.

Pour chaque composante essentielle de ces compétences, il faut préciser une
ou plusieurs tâche(s) justifiant de sa mobilisation.
Chaque tâche devra faire l'objet d'une sous-section dédiée, identifiée par
un titre de niveau trois (préfixé par `###`), et comportant l'ensemble des
informations relatives à la tâche (contexte, preuve et justification).

Un modèle de paragraphe est fourni pour chaque composante essentielle.
Les *placeholders* `` `<du projet PPPPP>` ``, `` `<la tâche TTTTT>` ``,
`` `<dans une preuve PPPPP>` `` et `` `<justification JJJJJ>` `` devront
être remplacés de manière appropriée en fonction de la tâche réalisée par
l'étudiant (les *backquotes* `` ` `` devront également être retirées).
En particulier, la preuve pourra être :

- [un lien, par exemple vers un *commit* ou un ticket](https://www.arthurperret.fr/tutomd/tutorial/07-links.html)
- [une image, par exemple une capture d'écran](https://www.arthurperret.fr/tutomd/tutorial/08-images.html)
- [un extrait de code, idéalement avec la coloration syntaxique appropriée](https://www.arthurperret.fr/tutomd/tutorial/09-code.html)

## Génération du document PDF

Le portfolio peut être édité directement sur GitLab depuis le Web IDE,
ce qui produira automatiquement une nouvelle version PDF du document,
disponible [ici](/../builds/artifacts/main/file/portfolio.pdf?job=portfolio). 

Vous pouvez aussi cloner ce projet, et le compiler localement.
Pour cela, vous aurez besoin de récupérer le template
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

