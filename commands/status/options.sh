# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Fri Jul 10 15:37:30 PDT 2015
#
#/ usage: rundeck-exec:status  --id <>  --server-url <"${SERVER_URL:-}">  --api-token <${API_TOKEN:-}> [ --detail] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --id) rerun_option_check $# $1; ID=$2 ; shift ;;
            --server-url) rerun_option_check $# $1; SERVER_URL=$2 ; shift ;;
            --api-token) rerun_option_check $# $1; API_TOKEN=$2 ; shift ;;
            --detail) DETAIL=true; [[ "${2:-}" == true ]] && shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$SERVER_URL" ] && SERVER_URL="$(rerun_property_get $RERUN_MODULE_DIR/options/server-url DEFAULT)"
    [ -z "$API_TOKEN" ] && API_TOKEN="$(rerun_property_get $RERUN_MODULE_DIR/options/api-token DEFAULT)"
    # Check required options are set
    [ -z "$ID" ] && { echo >&2 "missing required option: --id" ; return 2 ; }
    [ -z "$SERVER_URL" ] && { echo >&2 "missing required option: --server-url" ; return 2 ; }
    [ -z "$API_TOKEN" ] && { echo >&2 "missing required option: --api-token" ; return 2 ; }
    # If option variables are declared exportable, export them.
    export SERVER_URL
    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${ID:=}
: ${SERVER_URL:=}
: ${API_TOKEN:=}
: ${DETAIL:=}


