rm ~/dotfiles/src/php.dict
php -r '$f=get_defined_functions();echo join("\n",$f["internal"]);'|sort > ~/dotfiles/src/php.dict
