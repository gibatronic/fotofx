get_package_field() {
    field=$1
    command=$(printf 's/.*"%s": *"\\([^"]*\\).*/\\1/p' "$field")
    package="$ROOT/package.json"

    sed -n "$command" < "$package"
}

get_word() {
    index=$1
    shift
    words=$*

    echo "$words" | cut -d ' ' -f "$index"
}
