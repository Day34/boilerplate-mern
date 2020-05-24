#!/bin/bash

function make_data_directory() {
  echo ">> Make data directory <<"
  mkdir data
}

function copy_default_env_files() {
  echo ">> Copy default env files <<"
  cp .env.example .env
}

function init_and_update_submodules() {
  echo ">> Initialize and update submodules <<"
  git submodule init && git submodule update
}

function checkout_branch() {
  branchName=$1
  echo ">> Checkout branch to $branchName <<"
  git submodule foreach git checkout $branchName
}

function install_node_modules() {
  echo ">> Install node modules <<"
  git submodule foreach yarn
}

make_data_directory # DB 데이터 저장할 디렉터리 생성
copy_default_env_files # 기본 환경 변수 파일 만들기
init_and_update_submodules # submodule 초기화 및 소스 업데이트
checkout_branch master # master 브랜치로 변경
install_node_modules # node modules 설치