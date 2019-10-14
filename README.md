# AWS CDK in a container

Create a container with AWS's CDK toolkit.
The latest version (at image build time) will be used.
`CDK_VER` can be specified to use a specific version.

## Usage

### latest

```bash
# Usage
cdk init sample-app --language typescript
cdk synth

```

### specific version

```bash
# Usage
cdk1.9.0 init sample-app --language typescript
cdk1.9.0 synth

```

## Setup

### Add to ~/.bashrc

```bash
. ./include.sh
```

### Create image

```bash
build-cdk
```

#### this add 2 aliases similar to

```bash
alias build-cdk='docker-compose -f ~/src/toolsInContainers/aws-cdk/docker-compose.yaml build'
alias cdk='docker-compose -f ~/src/toolsInContainers/aws-cdk/docker-compose.yaml run cdk'
```

### A specific version

```bash
CDK_VER=1.8.0 . ./include.sh
```

This will create the aliases ...

- `build-cdk1.8.0`
- `cdk1.8.0`
