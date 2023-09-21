#!/usr/bin/env python3
import os
import sys

import config_validator
import yaml_handler

DEFAULT_CONFIG="./config.yaml"
OUTPUT="./output"

def main():
    config_file = DEFAULT_CONFIG
    if (len(sys.argv) >= 2):
        config_file = sys.argv[1]
    config_data = yaml_handler.parse(config_file)

    # validate config file
    config_errors = config_validator.validate(config_data)
    if len(config_errors) != 0:
        print("config error")
        print(",".join(config_errors))
        sys.exit(1)
    

    terraform_main_data = dict(
        region = "us-east-1"
    )
    terraform_main_file = os.path.join(OUTPUT, "main.tf")
    yaml_handler.write(terraform_main_file, terraform_main_data)



if __name__ == "__main__":
    main()
