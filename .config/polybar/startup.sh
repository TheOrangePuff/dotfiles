# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

HOSTNAME=$(cat /etc/hostname)

# Start polybar on all monitors
for m in $(polybar -m | cut -d":" -f1); do
  if [ $HOSTNAME = 'Daniels-Laptop' ]; then
    MONITOR=$m polybar -r laptop &
  else
    MONITOR=$m polybar -r mainbar &
  fi
done
