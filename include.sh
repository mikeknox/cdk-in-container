_CDK_VER="${CDK_VER:-latest}"
_NODE_VER="${NODE_VER:-alpine}"

# TODO: allow custom name tagging, to make it easier to support specific node versions
if [[ "${_CDK_VER:-}" == "latest" ]] ; then
    name="cdk"
else
    name="cdk${_CDK_VER}"
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

alias "build-${name}"="CDK_VER=${_CDK_VER} NODE_VER=${_NODE_VER} docker-compose -f ${DIR}/docker-compose.yaml build"
alias "${name}"="CDK_VER=${_CDK_VER} NODE_VER=${_NODE_VER} docker-compose -f ${DIR}/docker-compose.yaml run cdk"

unset _CDK_VER
unset _NODE_VER