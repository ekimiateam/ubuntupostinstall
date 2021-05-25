import gi
import os
import platform
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

def majdriver(button):
    #entrer le nom du script de màj
   os.system('bash run.20.04.sh')

os.system('cp /sys/devices/virtual/dmi/id/product_name .')

with open('/sys/devices/virtual/dmi/id/bios_version') as f:
    ver_bios = f.readlines()
ver_bios_string = ""
for i in ver_bios:
    ver_bios_string += i + " "
    ver_bios_string = ver_bios_string.rstrip()
print(ver_bios_string) 

kernel_ver = platform.release()
os_ver = platform.version()


#il faudra ajouter les photos de touts les produit dans le dossier sou la forme ""product_name".png"
#pour l'instant c'est "jaguarok" pour les tests

with open('product_name') as f:
    modele = f.readlines()
modele_string = ""
for i in modele:
    modele_string += i + ""
    modele_string = modele_string.rstrip()
print(modele_string)

photo = modele_string + ".png"
class GridWindow(Gtk.Window):
    def __init__(self):
        Gtk.Window.__init__(self, title="Ekidrivers")
        grid = Gtk.Grid()
        self.add(grid)
        button1 = Gtk.Button(label="Mettre à jour les drivers")
        label = Gtk.Label('Ekimia')
        label21 = Gtk.Label("Modèle : ")
        label2 = Gtk.Label(modele_string)
        #label31 = Gtk.Label('BAREBONE : ')
        #label3 = Gtk.Label('NV41ME')
        label41 = Gtk.Label("Version de bios : ")
        label4 = Gtk.Label(ver_bios_string)
        label51 = Gtk.Label("Kernel : ")
        label5 = Gtk.Label(kernel_ver)
        label61 = Gtk.Label("Version de l'OS : ")
        label6 = Gtk.Label(os_ver)
        photo_jag = Gtk.Image()
        photo_jag.set_from_file(photo)

        button1.connect('clicked', majdriver)

        grid.attach(label, 2, 1, 5, 3)
        grid.attach(label21, 0, 5, 5, 3)
        grid.attach(label2, 5, 5, 5, 3)
        #grid.attach(label31, 0, 9, 5, 3)
        #grid.attach(label3, 5, 9, 5, 3)
        grid.attach(label41, 0, 13, 5, 3)
        grid.attach(label4, 5, 13, 5, 3)
        grid.attach(label51, 0, 17, 5, 3)
        grid.attach(label5, 5, 17, 5, 3)
        grid.attach(label61, 0, 21, 5, 3)
        grid.attach(label6, 5, 21, 5, 3)
        grid.attach(photo_jag, 2, 25, 5, 3)
        grid.attach(button1, 2, 29, 5, 3)


win = GridWindow()
win.set_size_request(500, 500)
win.connect("delete-event", Gtk.main_quit)
win.show_all()
Gtk.main()