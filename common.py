import os

print("common start")

os.system(r"""sudo sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT=/ s/"\(.*\)"/"\1 i8042.reset"/' /etc/default/grub""")
os.system("sudo update-grub")

print("common finish")
