# Conda environment set up in GitHub actions

Repository is dedicated to experimenting with Conda environment in GitHub Actions CI/CD environment. The GitHub actions workflow file is located in `.github\workflows` directory and the example conda recipe of package is located in `.conda\recipe` folder.

</br>

Currently the GitHub Actions workflow file only supports the conda environment set up process for windows runner. The action is able to set up a test conda environment, install necessary build dependencies, launch conda-build tool to build a custom package, install the package to conda environment and run the test executable from conda environment binary directory.
