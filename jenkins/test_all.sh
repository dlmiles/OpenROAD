# exit if any regression script fails
set -e
test/regression
src/pdngen/test/regression
src/resizer/test/regression
src/opendp/test/regression
src/TritonMacroPlace/test/regression
src/TritonCTS/tests/run_all.sh ./build/src/openroad ./src/TritonCTS/tests/

# These tests are too brain dead to run outside of docker
#pushd src/replace/test && python3 regression.py run openroad && popd
#src/ioPlacer/tests/run_all.sh ./build/src/openroad ./src/ioPlacer/tests/
