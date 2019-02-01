workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Maven-1"]
}

action "GitHub Action for Maven" {
  uses = "LucaFeger/action-maven-cli@aed8a1fd96b459b9a0be4b42a5863843cc70724e"
  runs = "mvn clean install"
}

action "GitHub Action for Maven-1" {
  uses = "LucaFeger/action-maven-cli@aed8a1fd96b459b9a0be4b42a5863843cc70724e"
  needs = ["GitHub Action for Maven"]
  runs = "mvn test"
}
