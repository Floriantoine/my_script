
VAR=$(find /run/media/aflorian/3962-3034/music -iname "*$1*" | pmenu)

echo $VAR

while [ 1 ]; do
ffplay "$VAR"
done