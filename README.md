# docsbuild-scripts-ja-env

build all

```
docker-compose run pydoc ./build_docs.py --build-root ./build_root --www-root ./www --log-directory ./logs --group $(id -g) --skip-cache-invalidation --language ja --branch 3.9
```


build pdf
```
docker-compose run pydoc sh -c "cd /builddir/build_root/cpython/Doc/build/latex;make clean; make howto-unicode.pdf"
```

