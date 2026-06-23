PASS_PIPELINE_ALIASES = {
    "loop-rotate": "function(loop(loop-rotate))",
}


def pipeline_name(pass_name):
    return PASS_PIPELINE_ALIASES.get(pass_name, pass_name)


def pipeline_names(pass_names):
    return [pipeline_name(pass_name) for pass_name in pass_names]
