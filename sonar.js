// sonar.js
const scanner = require('sonarqube-scanner');

scanner({
  serverUrl: 'https://sonarcloud.io',
  options: {
    'sonar.projectKey': 'hakimsa_devops-repo',
    'sonar.organization': 'hakimsa',
    'sonar.sources': '.',
  }
});
