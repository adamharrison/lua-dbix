package = "dbix.dbd.mysql"
version = "1.0-1"
description = {
   summary = "The dbd for mysql for dbix.",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
source = {
   url = "https://github.com/adamharrison/lua-dbix.git",
   tag = "v1.0",
}
external_dependencies = {
   LIBMYSQL = { header = "mysql/mysql.h" }
}
build = {
   type = "builtin",
   modules = {
      ["dbix.dbd.mysql"] = { sources = {"src/mysql.c"}, libraries = {"mysqlclient"}, incdirs = {"$(LIBMYSQL_INCDIR)/mysql"}, libdirs = {"$(LIBMYSQL_LIBDIR)"} }
   }
}
