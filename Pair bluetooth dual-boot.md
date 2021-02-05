# Pair same Bluetooth with dual-boot

Used for connecting Logitech K380.

1. Pair on Linux
2. Restart to Windows
3. Pair on Windows
4. Restart to Linux
5. Open terminal

  ```sh
  sudo apt install chntpw
  cd /[WindowsSystemDrive]/Windows/System32/config
  chntpw -e SYSTEM
  cd \ControlSet001\Services\BTHPORT\Parameters\Keys
  cd f82819e587fc     # or whatever is there (use ls)
  hex f473350f5dfa    # MAC of peripheral
  ```
6. Copy values after 0000
7. Go back to terminal

  ```sh
  sudo su
  vim /var/lib/bluetooth/[PC's MAC address]/[peripheral's MAC]/info
  ```

8. After `Key=` paste values copied in step 6.
9. Restart bluetooth with `systemctl restart bluetooth`
