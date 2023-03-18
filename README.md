# docsbuild-scripts-ja-env


docker-compose run pydoc ./build_docs.py --build-root ./build_root \
--www-root ./www --log-directory ./logs --group $(id -g) \
--skip-cache-invalidation --language ja --branch 3.9

