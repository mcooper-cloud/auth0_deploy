#!/bin/bash

echo "Exit status $?"
echo "[+] $(date) - Entered STAGE 1 PREBUILD - phase 3 build"

ENV_SH_PATH=$CODEBUILD_SRC_DIR/$ENV_PATH/$ENV_SH
source $ENV_SH_PATH


main(){

    get_pipeline_stack_outputs
    get_secrets_params

    auth0_deploy "${CODEBUILD_SRC_DIR}/${AUTH0_TENANT_YAML}" "a0deploy"

}

main
