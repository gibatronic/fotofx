log() {
    message=$1
    shift
    arguments=$(printf '%s\n' "$@")

    # shellcheck disable=SC2059
    printf -- "$message\n" "$arguments"
}

error() {
    message=$1
    shift
    arguments=$(printf '%s\n' "$@")

    log "Error: $message" "$arguments" 1>&2
}
