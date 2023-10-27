# script to create a CloudFormation Stack.
stack_name=$1
template_file=$2
parameters_file=$3
shift 3
aws cloudformation create-stack --stack-name $stack_name --template-body file://$template_file --parameters file://$parameters_file "$@"
