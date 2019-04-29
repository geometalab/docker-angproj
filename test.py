import json
import subprocess


def run():
    output = subprocess.check_output(
        ["psql", "-h", "container_name", "-U", "postgres", "-d", "angproj", "-c", "select count(*) from angestellter;"])
    output = output.decode('utf8')
    print(output)
    if "23" in output:
        return json.dumps({'result': 'correct'})
    return json.dumps({'result': 'wrong'})


if __name__ == '__main__':
    print(run())
