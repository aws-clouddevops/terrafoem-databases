module "mongodb" {
  source               = "./vendor/modules/mongodb"
  ENV                  = var.ENV
  DOCDB_PORT           = var.DOCDB_PORT
  DOCDB_INSTANCE_CLASS = var.DOCDB_INSTANCE_CLASS
  DOCDB_INSTANCE_COUNT = var.DOCDB_INSTANCE_COUNT
}  

module "redis" {
  source                      = "./vendor/modules/redis"
  ENV                         = var.ENV
  ELASTICCACHE_PORT           = var.ELASTICCACHE_PORT
  ELASTICCACHE_ENGINE_VERSION = var.ELASTICCACHE_ENGINE_VERSION
  ELASTICCACHE_NODE_TYPE      = var.ELASTICCACHE_NODE_TYPE
  ELASTICCACHE_NODE_COUNT     =var.ELASTICCACHE_NODE_COUNT
}  

module "mysql" {
  source               = "./vendor/modules/mysql"
  ENV                  = var.ENV
  MYSQL_PORT_NUMBER    = var.MYSQL_PORT_NUMBER
  MYSQL_STORAGE        = var.MYSQL_STORAGE
  MYSQL_ENGINE_VERSION = var.MYSQL_ENGINE_VERSION
  MYSQL_INSTANCE_CLASS = var.MYSQL_INSTANCE_CLASS
}  


# Always the source attribute in terraform module can not be parameterized

# if it can not be handled or parameterized the source, how are we going to tell, fetch from x brand and when branches are dynamic
# Elasticcache Variable Values
