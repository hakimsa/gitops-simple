// sonar.js
const scanner = require('sonarqube-scanner');

scanner({
  serverUrl: 'https://sonarcloud.io',
  options: {
    'sonar.projectKey': 'hakimsa_gitops-simple',
    'sonar.organization': 'hakimsa',
    'sonar.sources': '.',
  }
});
