#!/bin/bash


# -----------------------------------------------------------------------------
# 设置HOST
# -----------------------------------------------------------------------------
if [ ! -z "$MYSQL_HOST" ]; then
    sed -i "s/IDOALL_HOST/$MYSQL_HOST/" /home/work/_app/nginx/html/config/local.php
else
    sed -i "s/IDOALL_HOST/mysql/" /home/work/_app/nginx/html/config/local.php
fi
# -----------------------------------------------------------------------------
# 设置数据库名称
# -----------------------------------------------------------------------------
if [ ! -z "$MYSQL_DB" ]; then
    sed -i "s/IDOALL_DB/$MYSQL_DB/" /home/work/_app/nginx/html/config/local.php
else
    sed -i "s/IDOALL_DB/walle-web/" /home/work/_app/nginx/html/config/local.php
fi
# -----------------------------------------------------------------------------
# 设置数据库用户名
# -----------------------------------------------------------------------------
if [ ! -z "$MYSQL_USERNAME" ]; then
    sed -i "s/IDOALL_USERNAME/$MYSQL_USERNAME/" /home/work/_app/nginx/html/config/local.php
else
    sed -i "s/IDOALL_USERNAME/root/" /home/work/_app/nginx/html/config/local.php
fi
# -----------------------------------------------------------------------------
# 设置root密码
# -----------------------------------------------------------------------------
if [ ! -z "$MYSQL_PASSWORD" ]; then
    sed -i "s/IDOALL_PASSWORD/$MYSQL_PASSWORD/" /home/work/_app/nginx/html/config/local.php
else
    sed -i "s/IDOALL_PASSWORD/123456/" /home/work/_app/nginx/html/config/local.php
fi

# -----------------------------------------------------------------------------
# 初始化数据库
# -----------------------------------------------------------------------------
echo yes | /home/work/_app/nginx/html/yii walle/setup