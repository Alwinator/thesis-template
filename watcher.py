import subprocess
import time

task = None


def start_evince():
    global task
    focus_window_id = subprocess.Popen('xdotool getactivewindow'.split(),
                                       stdout=subprocess.PIPE).communicate()[0].decode('utf-8').strip()

    task = subprocess.Popen('evince build/thesis.pdf', shell=True)
    time.sleep(0.1)
    bash(f'xdotool windowfocus {focus_window_id}')
    bash(f'xdotool windowactivate {focus_window_id}')


def restart_evince():
    global task
    task.terminate()
    start_evince()


def bash(cmd):
    subprocess.call(cmd.split(), stdout=subprocess.DEVNULL)


def build():
    print("Change detected! Rebuilding...")
    bash('bash build.sh skip')
    print("Build done!")
    restart_evince()


print('Creating initial build...')
bash('bash build.sh')
print('Starting PDF viewer...')
start_evince()

try:
    while True:
        bash('inotifywait -qr --event modify .')
        build()

except KeyboardInterrupt:
    print('Stopping watcher...')

