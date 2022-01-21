import subprocess

INSECURE_SECRET_RSA_KEY = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAp0A7aEqG42y0q22yU+dLFMrlVhnk2C94QChUwZv0pKmEvySmzSGSY2gSMfarHjpKcW8OKZ5bcmgkZZ3sRkLJSUwYui/pZxOkUIKZ/sUsFDrW4souGPLfP1ziX/Rj0x+MXj7et/cKO5GwqanXrULssdXapaTz4W+OmMkSpPjtDC2lbfTuOL7lYE1cfbluoPcxvU2kw0ZIGFqOCFar2It33Xsie1C+//qIX3QWjJAvYF0ZF+OR"

INSECURE_URL_WITH_HARDCODED_BASIC_AUTH = "https://admin:god@hackers.com"

def run_cmd (anything_the_user_types_in:str) -> subprocess.CompletedProcess:
    return subprocess.run(anything_the_user_types_in, capture_output=True, universal_newlines=True, shell=True)
