def validate(config_data):
    errors = []
    if not ("region" in config_data):
        errors.append("region not found")

    # all checks passed, config file valid
    return errors