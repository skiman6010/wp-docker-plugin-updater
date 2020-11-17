for plugin in $(wp plugin list --update=available --field=name --allow-root);
do
    wp plugin update $plugin &&
    git add -A wp-content/plugins/$plugin &&
    git commit -m 'update $plugin plugin'
done;