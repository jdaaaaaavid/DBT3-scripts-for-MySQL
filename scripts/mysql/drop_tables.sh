#!/bin/bash

#
# This file is released under the terms of the Artistic License.
# Please see the file LICENSE, included in this package, for details.
#
# Copyright (C) 2005 Jenny Zhang & Open Source Development Labs, Inc.
# Copyright (c) 2008 Ingres Corp.

DIR=`dirname $0`
. ${DIR}/${DATABASE}_profile || exit 1

$MYSQL_CLIENT  -e "DROP TABLE supplier;" $SID
$MYSQL_CLIENT  -e "DROP TABLE part;" $SID
$MYSQL_CLIENT  -e "DROP TABLE partsupp;" $SID
$MYSQL_CLIENT  -e "DROP TABLE customer;" $SID
$MYSQL_CLIENT  -e "DROP TABLE orders;" $SID
$MYSQL_CLIENT  -e "DROP TABLE lineitem;" $SID
$MYSQL_CLIENT  -e "DROP TABLE nation;" $SID
$MYSQL_CLIENT  -e "DROP TABLE region;" $SID
$MYSQL_CLIENT  -e "DROP TABLE time_statistics;" $SID

exit 0
