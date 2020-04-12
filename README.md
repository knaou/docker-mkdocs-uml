# docker-mkdocs-uml

Docker image of mkdocs with plantyml and Japanese font

# Quick start

Create new project

    docker run -v `pwd`:/work knaou/mkdocs-uml mkdocs new new-project-name

And build docs

    docker run -v `pwd`:/work knaou/mkdocs mkdocs build

# Use PlantUML or mermaid

See test code as a sample: test/src/


