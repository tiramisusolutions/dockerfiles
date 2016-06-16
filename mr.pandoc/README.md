# Mr.pandoc

Let us say the name of the container is *p2*, as this is what we use in the example below ...

```
cd tests
docker run -v `pwd`/:/source p2 -f html -t markdown index.html -o index.md
```

Or like that:

mr.pandoc -f html -t markdown index.html -o index.md
