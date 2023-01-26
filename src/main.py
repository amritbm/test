import os
from dotenv import load_dotenv

load_dotenv()

ENV_VAR = os.getenv('ENV_VAR')


def run_me():
    """test"""

    print("It is running")
    print(ENV_VAR)
    print("end")
