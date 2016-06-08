

docker run -it --rm -v ${PWD}/:/build/app:rw -v ${PWD}/docs:/build/docs -u $(id -u) --name ci mrci

