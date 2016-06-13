


docker run -it --rm -v ${PWD}/:/build/app:rw -v ${PWD}/docs:/build/docs -u $(id -u):$(id -g) --name ci-test quay.io/tiramisu/mr.ci

Loop through dir and check all files:

for f in *.rst ; do alex $f -t ; done
