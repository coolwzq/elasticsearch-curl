index=$1

if [$index = ""]; then
	echo "Please input index; for example: ./create_index.sh index_name";
	exit;
fi

curl -XPUT localhost:9200/$index"?pretty"
