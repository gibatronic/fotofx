log() {
    message=$1
    shift
    # shellcheck disable=SC2059
    printf -- "$message\n" "$@"
}

error() {
    message=$1
    shift
    log "Error: $message" "$@" 1>&2
}
