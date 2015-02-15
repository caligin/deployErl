PROJECT = versionapp

DEPS = cowboy
dep_cowboy = git git://github.com/extend/cowboy.git 1.0.0

DEPLOY_IDENTITY_FILE = ../docker/insecure_test_key
DEPLOY_TARGET = localhost
DEPLOY_TARGET_PORT = 2222

include erlang.mk
include ../deployErl.mk
