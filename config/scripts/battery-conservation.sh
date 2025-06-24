batCons=$(cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)

if [ $batCons -eq 0 ]; then
  echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
  dunstify -t 1500 -h string:x-dunst-stack-tag:battery "Battery battery conservation:" "Activated"
else 
  echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
  dunstify -t 1500 -h string:x-dunst-stack-tag:battery "Battery battery conservation:" "Deactivated"
fi
