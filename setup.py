from setuptools import setup, find_packages

REQUIREMENTS = [
    'structlog'
]
DEV_REQUIREMENTS = [
    "mkdocs",
    "mkdocs-material",
    "flake8",
    "mypy"
]

with open('README.md', 'r') as fh:
    long_description = fh.read()
setup(
    name='py_template',
    version='0.1.0',
    description='Your project description here',
    long_description=long_description,
    packages=find_packages(include=['py_template', 'py_template.*']),
    install_requires=REQUIREMENTS,
    extras_require={
        "dev": DEV_REQUIREMENTS
    },
    entry_points={
        'console_scripts': ['my-command=py_template.example:main']
    }
)
