remove=$1
add=$2

curl -XPOST localhost:9200/_aliases?pretty -d'
{
	"actions": [
		{"remove": {"index": "'$remove'", "alias": "'$remove'_alias"}},
		{"add": {"index": "'$add'", "alias": "'$add'_alias"}}
	]
}'
