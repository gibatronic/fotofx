validate_enum() {
    name=$1
    value=$2
    shift 2
    enum=$(printf '%s\n' "$@")

    validate_required "$name" "$value" || return 1

    for item in $enum; do
        if [ "$item" = "$value" ]; then
            return 0
        fi
    done

    error "option "'"'"$name"'"'" has unkown value: "'"'"$value"'"'
    return 1
}

validate_float() {
    name=$1
    value=$2

    validate_required "$name" "$value" || return 1

    if echo "$value" | grep -q '^[0-9.]\+$'; then
        return 0
    fi

    error "option "'"'"$name"'"'" has invalid floating point number: "'"'"$value"'"'
    return 1
}

validate_int() {
    name=$1
    value=$2

    validate_required "$name" "$value" || return 1

    if echo "$value" | grep -q '^[0-9]\+$'; then
        return 0
    fi

    error "option "'"'"$name"'"'" has invalid integer number: "'"'"$value"'"'
    return 1
}

validate_required() {
    name=$1
    value=$2

    if [ -n "$value" ]; then
        return 0
    fi

    error "option "'"'"$name"'"'" is required"
    return 1
}
