#!/bin/bash
import subprocess
import distro

def install_ubuntu_22():
    print('Installation pour Ubuntu 22')
config_file = "ubuntu-22.04-postinstall.cfg"
    
def install_ubuntu_20():
    print('Installation pour Ubuntu 20')
config_file = "ubuntu-20.04-unity-postinstall.cfg "

def install_ubuntu_18():
    print('Installation pour Ubuntu 18')
config_file = "ubuntu-18.04-unity-postinstall.cfg"

def install_kubuntu_22():
    print('Installation pour Kubuntu 22')
config_file = "kubuntu-22.04.cfg"

def install_kubuntu_20():
    print('Installation pour Kubuntu 20')
config_file = "kubuntu-20.04.cfg"

def install_mint_21():
    print('Installation pour Mint 21')
config_file = "mint21.cfg"


subprocess.run(['python2.7', 'ubuntu-14.04-postinstall.py', '-c', config_file])


# Dictionnaire des options
options = {
    ('jammy', 'ubuntu'): install_ubuntu_22,
    ('focal', 'ubuntu'): install_ubuntu_20,
    ('bionic', None): install_ubuntu_18,
    ('jammy', 'kubuntu'): install_kubuntu_22,
    ('focal', 'kubuntu'): install_kubuntu_20,
    ('vanessa', None): install_mint_21
}

# Obtention des valeurs pertinentes pour la distribution
distro_codename = distro.codename()
distro_id = distro.id()

# Recherche de la fonction appropriée dans le dictionnaire
install_function = options.get((distro_codename, distro_id))

# Exécution de la fonction si elle existe, sinon affichage d'un message d'erreur
if install_function:
    install_function()
else:
    print('Installation non prise en charge pour cette distribution.')
