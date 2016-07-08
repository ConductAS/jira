# Denne filen definerer rekkefølgen på modulene
# Skal en modul ekskluderes, vennligst gjor det her
#
# Stages og Patterns brukes for å bestemme rekkefolgen på installasjoner
# Default er at alt er i main stage
stage { ['first', 'last']: }
Stage['first'] -> Stage['main'] ->  Stage['last']

class { 'jdk':        stage => first }

class { 'jira':        stage => last  }

