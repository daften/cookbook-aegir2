default["aegir2"]["install_method"] = "package"
default["aegir2"]["install_folder"] = "/var/aegir"

# Attributes needed for both install methods
default["aegir2"]["frontend"] = "localhost"
default["aegir2"]["admin_email"] = "webmaster@localhost"
default["aegir2"]["webserver"] = "apache2"

default['mysql_tuning']['tuning.cnf']['mysqld']['max_allowed_packet'] = '16M'

default["php"]["conf_dir"] = "/etc/php5/apache2"
default["php"]["directives"] = {
    "memory_limit" => "256M"
}
