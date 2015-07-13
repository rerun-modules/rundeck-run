[rundeck-run](../../index.html)
# job 

execute the job

## SYNOPSIS

    rerun rundeck-run:job [--filter <>] --id <> [--args <>] --server-url <"${SERVER_URL:-}"> --api-token <${API_TOKEN:-}>

### OPTIONS

* [   [--filter <>]: node filter](../../options/filter/index.html)
* [    --id <>: the unique identifier](../../options/id/index.html)
* [   [--args <>]: args to pass to the job](../../options/args/index.html)
* [    --server-url <"${SERVER_URL:-}">: rundeck base url](../../options/server-url/index.html)
* [    --api-token <${API_TOKEN:-}>: the API access token](../../options/api-token/index.html)

## README


### Examples

Export the server url and api-token so you dont have to set them as command options:

	export SERVER_URL=http://localhost:4440
	export API_TOKEN=xxxxxxxxxxxxxxxxxxx

Run the job specified by it's identifier:

	rerun rundeck-run:job --id 4ece2781-bc42-43c5-93b0-46638a52fed5
    * 977 execution - [myproject: myjob] - running - 7s average-duration - by alexh

The command prints execution info. The first number `977` is the execution identifier.
See the *status* command to get status about an execution.

You can override the nodefilters and pass arguments using the `--filter` and `--args` options:

rerun rundeck-run:job --id 4ece2781-bc42-43c5-93b0-46638a52fed5 \
	--filter 'tags:www' --args '-optA valueA'

## TESTS

Use the `stubbs:test` command to to run test plans.

    rerun stubbs:test -m rundeck-run -p job

*Test plan sources*

* [job-1](../../tests/job-1.html)
  * it fails without a real test

## SCRIPT

To edit the command script for the rundeck-run:job command, 
use the `stubbs:edit`
command. It will open the command script in your shell EDITOR.

    rerun stubbs:edit -m rundeck-run -c job

*Script source*

* [script](script.html): `RERUN_MODULE_DIR/commands/job/script`

## METADATA

* `NAME` = job
* `DESCRIPTION` = "execute the job"
* `OPTIONS` = "filter id args server-url api-token"

----

*Generated by stubbs:docs Mon Jul 13 16:11:09 PDT 2015*
