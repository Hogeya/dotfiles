rm ~/dotfiles/src/php/php.dict
php -r '$f=get_defined_functions();echo join("\n",$f["internal"]);'|sort > ~/dotfiles/src/php.dict
