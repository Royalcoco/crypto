import numpy as np
import matplotlib.pyplot as plt
import networkx as nx

# Paramètres du modèle
regions = 10  # Nombre de régions cérébrales
initial_frequencies = np.linspace(30, 0.5, regions)  # Fréquences initiales (gamma à delta)
lambda_decay = 0.2  # Taux de décroissance
time = np.linspace(0, 10, 100)  # Temps

# Calcul de la décroissance fréquentielle
frequencies = np.array([f * np.exp(-lambda_decay * time) for f in initial_frequencies])

# Calcul de l'entropie pour chaque région
entropies = -frequencies * np.log(frequencies + 1e-9)

# Création d'une carte cérébrale (graphe)
graph = nx.path_graph(regions)
positions = nx.spring_layout(graph)

# Visualisation des fréquences décroissantes
plt.figure(figsize=(12, 6))
for i, freq in enumerate(frequencies):
    plt.plot(time, freq, label=f"Région {i+1}")
plt.title("Décroissance Fréquentielle vers la Glande Pinéale")
plt.xlabel("Temps")
plt.ylabel("Fréquence (Hz)")
plt.legend()
plt.grid()
plt.show()

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

# Visualisation de l'entropie des régions
plt.figure(figsize=(12, 6))
for i, entropy in enumerate(entropies):
    plt.plot(time, entropy, label=f"Région {i+1}")
plt.title("Entropie des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")
plt.fill_between(time, mean_entropy, alpha=0.5)
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")
plt.fill_between(time, mean_entropy, alpha=0.5)
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)

plt.plot(time, mean_entropy, label="Entropie Moyenne")
plt.fill_between(time, mean_entropy, alpha=0.5)
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")
plt.fill_between(time, mean_entropy, alpha=0.5)
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")

plt.fill_between(time, mean_entropy, alpha=0.5)
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")
plt.fill_between(time, mean_entropy, alpha=0.5)
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")
plt.fill_between(time, mean_entropy, alpha=0.5)
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")

plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")
plt.fill_between(time, mean_entropy, alpha=0.5)
plt.title("Entropie Moyenne des Régions Cérébrales")
plt.xlabel("Temps")
plt.ylabel("Entropie")
plt.legend()
plt.grid()
plt.show()

# Visualisation de l'entropie moyenne
plt.figure(figsize=(12, 6))
mean_entropy = np.mean(entropies, axis=0)
plt.plot(time, mean_entropy, label="Entropie Moyenne")  # Affichage de l'entropie moyenne
plt.fill_between(time, mean_entropy, alpha=0.5)  # Affichage de la zone d'incertitude
plt.title("Entropie Moyenne des Régions Cérébrales")  # Titre du graphique
plt.xlabel("Temps")  # Titre de l'axe des abscisses
plt.ylabel("Entropie")  # Titre de l'axe des ordonnées
plt.legend()  # Affichage de la légende
plt.grid()  # Affichage de la grille
plt.show()  # Affichage du graphique

<matplotlib.figure.Figure at 0x7f7f3c1b7b38>
cache: 0.abf/maskedarray.py:1006: RuntimeWarning: divide by zero encountered in log
  result = getattr(ufunc, method)(*inputs, **kwargs)
cache: 0.abf/maskedarray.py:1006: RuntimeWarning: divide by zero encountered in log
    result = getattr(ufunc, method)(*inputs, **kwargs)
cache: 0.abf/maskedarray.py:1006: RuntimeWarning: divide by zero encountered in log
    result = getattr(ufunc, method)(*inputs, **kwargs)
cache: 0.abf/maskedarray.py:1006: RuntimeWarning: divide by zero encountered in log
    result = getattr(ufunc, method)(*inputs, **kwargs)
cache: 0.abf/maskedarray.py:1006: RuntimeWarning: divide by zero encountered in log
    result = getattr(ufunc, method)(*inputs, **kwargs)
cache: 0.abf/maskedarray.py:1006: RuntimeWarning: divide by zero encountered in log
    result = getattr(ufunc, method)(*inputs, **kwargs)
cache: 0.abf/maskedarray.py:1006: RuntimeWarning: divide by zero encountered in log
    result = getattr(ufunc, method)(*inputs, **kwargs)
cache: 0.abf/maskedarray.py:1006: RuntimeWarning: divide by zero encountered in log
    result = getattr(ufunc, method)(*inputs, **kwargs)  # Affichage du graphique

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)    # Affichage de la carte cérébrale
plt.title("Carte Cérébrale avec Entropie des Régions")  # Titre du graphique
plt.show()  # Affichage du graphique

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

# Visualisation de la carte cérébrale
plt.figure(figsize=(8, 8))
nx.draw(graph, pos=positions, with_labels=True, node_size=500, node_color=entropies[:, -1], cmap=plt.cm.viridis)
plt.title("Carte Cérébrale avec Entropie des Régions")
plt.show()

import numpy as np
import matplotlib.pyplot as plt

def plot_fractal_circles(r0, levels, center=(0, 0)):
    """Trace des cercles fractals avec une décroissance de rayon."""
    x0, y0 = center
    fig, ax = plt.subplots(figsize=(8, 8))
    
    # Accrétion fractale
    for n in range(1, levels + 1):
        radius = r0 / n
        circle = plt.Circle((x0, y0), radius, fill=False, color=plt.cm.viridis(n / levels))
        ax.add_artist(circle)
        # Ajouter des connexions vers les cercles suivants
        if n > 1:
            x_next, y_next = x0 + radius, y0 - radius / 2
            ax.plot([x0, x_next], [y0, y_next], linestyle='--', color='black')
            x0, y0 = x_next, y_next

    ax.set_xlim(-r0, r0 * 2)
    ax.set_ylim(-r0, r0)
    ax.set_aspect('equal', 'box')
    ax.set_title("Fractale des Cercles pour une Carte Cérébrale")
    plt.show()

# Paramètres
plot_fractal_circles(r0=1, levels=10)

# Paramètres
plot_fractal_circles(r0=1, levels=10)
# Paramètres
plot_fractal_circles(r0=1, levels=10)
# Paramètres
plot_fractal_circles(r0=1, levels=10)
# Paramètres
plot_fractal_circles(r0=1, levels=10)
# Paramètres
plot_fractal_circles(r0=1, levels=10)
Trace.tchat: =x_next, y_next = x0 + radius, y0 - radius / 2
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'x0' is not defined

# Paramètres
plot_fractal_circles(r0=1, levels=10)
plt.fill_between.__doc__@x_next, y_next = x0 + radius, y0 - radius / 2
plt.fill_between.__doc__Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'x0' is not defined
if (condition) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
   selected = 1
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)

} else {
    code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
    if (condition) {
        // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
       selected
    }
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
}
if (selected) {
    // Code à exécuter si la condition est vraie : if block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
} else {
    // Code à exécuter si la condition est fausse : else block = + 1.& */node_color=entropies[:, -1], cmap=plt.cm.viridis)
# This script appears to have an incorrect file path and syntax.
# The file path suggests it is located at:
# /C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r
# However, the syntax and structure of the code are not valid R code.
# Please ensure the file path and code syntax are correct.
} 'C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r'  # Affichage du graphique

# This script appears to have an incorrect file path and syntax.
# The file path suggests it is located at: /C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r/upr'47
# However, the syntax and structure of the code are not valid R code.
# Please ensure the file path and code syntax are correct.
} 'C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r'  # Affichage du graphique

# This script appears to have an incorrect file path and syntax.
# The file path suggests it is located at: /C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r/upr'47
# However, the syntax and structure of the code are not valid R code.
# Please ensure the file path and code syntax are correct.
} 'C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r'  # Affichage du graphique

# This script appears to have an incorrect file path and syntax.
# The file path suggests it is located at: /C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r/upr'47
# However, the syntax and structure of the code are not valid R code.

# Please ensure the file path and code syntax are correct.
} 'C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r'  # Affichage du graphique

# This script appears to have an incorrect file path and syntax.
# The file path suggests it is located at: /C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r/upr'47
# However, the syntax and structure of the code are not valid R code.
# Please ensure the file path and code syntax are correct.
} 'C:/Users/salib/OneDrive/Bureau/money/import numpy as np.r'  # Affichage du graphique
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
install.packages(0.abf, z-0.lib, repos = getOption("repos"), contriburl = contrib.url(repos, type))
# chemin : wallet_simulation/mise_random_interface.py

import tkinter as tk
from tkinter import messagebox
import random

# Initialisation du portefeuille utilisateur
user_wallet = {"balance": 1000}  # Solde initial de 1000 devises

def simulate_mining():
    """Simule le processus de minage et génère un gain aléatoire."""
    # Génération de blocs aléatoires
    blocks = [random.randint(1, 100) for _ in range(100)]
    
    # Probabilité non uniforme pour atteindre 1 million
    random_gain = random.choices(
        [random.randint(0, 10000), random.randint(10000, 50000), random.randint(50000, 100000), 1_000_000],
        weights=[60, 30, 9, 1],  # Distribution pondérée
        k=1
    )[0]
    return random_gain

def place_bet():
    """Fonction pour miser 10 devises et obtenir le gain."""
    if user_wallet["balance"] < 10:
        messagebox.showerror("Erreur", "Fonds insuffisants pour miser.")
        return
    
    # Déduire la mise
    user_wallet["balance"] -= 10
    
    # Simuler le processus de minage
    gain = simulate_mining()
    
    # Ajouter le gain au portefeuille
    user_wallet["balance"] += gain
    
    # Afficher le résultat
    result_message = f"Vous avez gagné {gain} devises !\nNouveau solde : {user_wallet['balance']} devises."
    messagebox.showinfo("Résultat", result_message)

def main():
    # Création de l'interface principale
    window = tk.Tk()
    window.title("Simulation de Mise Random")
    window.geometry("400x300")
    
    # Label pour afficher le solde actuel
    balance_label = tk.Label(window, text=f"Solde actuel : {user_wallet['balance']} devises", font=("Arial", 14))
    balance_label.pack(pady=20)
    
    # Bouton pour lancer une mise
    bet_button = tk.Button(window, text="Miser 10 devises", font=("Arial", 14), command=lambda: [place_bet(), balance_label.config(text=f"Solde actuel : {user_wallet['balance']} devises")])
    bet_button.pack(pady=20)
    
    # Bouton pour quitter
    quit_button = tk.Button(window, text="Quitter", font=("Arial", 14), command=window.quit)
    quit_button.pack(pady=20)
    
    # Lancer la boucle principale
    window.mainloop()

if __name__ == "__main__":
    main()
# fichier : betting_game.py

import random
import time

class Wallet:
    """Un portefeuille utilisateur pour gérer les gains."""
    def __init__(self, initial_balance=0):
        self.balance = initial_balance

    def add(self, amount):
        self.balance += amount

    def get_balance(self):
        return self.balance


class BettingGame:
    """Le jeu de pari basé sur un système de blocs simulés."""
    def __init__(self, wallet, bet_amount=10):
        self.wallet = wallet
        self.bet_amount = bet_amount

    def generate_blocks(self, num_blocks=5):
        """
        Simule la génération de blocs. Chaque bloc contient un hash aléatoire
        influençant les résultats.
        """
        blocks = []
        for _ in range(num_blocks):
            block_hash = random.randint(1, 1_000_000)
            blocks.append(block_hash)
        return blocks

    def mine_blocks(self, blocks):
        """
        Simule le minage de blocs, où un bloc "gagnant" influe sur les résultats.
        """
        mined_value = 0
        for block in blocks:
            mined_value += block // random.randint(10_000, 100_000)
        return mined_value % 1_000_000

    def play(self):
        """Lance une partie de pari."""
        print(f"Vous misez {self.bet_amount} unités monétaires.")
        if self.wallet.get_balance() < self.bet_amount:
            print("Solde insuffisant dans le portefeuille.")
            return

        # Déduire la mise
        self.wallet.add(-self.bet_amount)

        # Générer et miner les blocs
        blocks = self.generate_blocks()
        print(f"Blocs générés : {blocks}")
        mined_value = self.mine_blocks(blocks)

        # Vérifier le résultat
        print(f"Valeur minée : {mined_value}")
        if mined_value == 1_000_000:
            print("Félicitations ! Vous avez gagné 1 000 000 !")
            self.wallet.add(1_000_000)
        else:
            print(f"Dommage, vous avez gagné {mined_value} unités.")
            self.wallet.add(mined_value)

        print(f"Votre solde actuel : {self.wallet.get_balance()} unités.")


def main():
    print("Bienvenue dans le jeu de pari basé sur des blocs !")
    user_wallet = Wallet(initial_balance=100)  # Solde initial de 100 unités
    game = BettingGame(wallet=user_wallet)

    while True:
        print("\n--- Nouvelle partie ---")
        game.play()
        play_again = input("Voulez-vous rejouer ? (o/n) : ").lower()
        if play_again != 'o':
            print("Merci d'avoir joué !")
            break

        time.sleep(1)


if __name__ == "__main__":
    main()

# fichier : betting_game.py

import random
import time

class Wallet:
    """Un portefeuille utilisateur pour gérer les gains."""
    def __init__(self, initial_balance=0):
        self.balance = initial_balance

    def add(self, amount):
        self.balance += amount

    def get_balance(self):
        return self.balance


class BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    class : BettingGame:*/|è`__init__stronger.(e.g.,_bet_amount=10)  # Affichage du graphique
    
    def __init__(self, wallet, bet_amount=10):
        self.wallet = wallet
        self.bet_amount = bet_amount / 10 * 10.://actuel.form.deproves/.lower/graphique:100_000@self.wallet.get_balance (.pie) <- factor(x = dataVec, levels = levels, exclude = exclude)
    self.wallet.add(-self.bet_amount)  # Déduire la mise
    self.wallet.add(-self.bet_amount)  # Déduire la mise
    self.wallet.add(-self.bet_amount)  # Déduire la mise

    def generate_blocks(self, num_blocks=5):
        """
        Simule la génération de blocs. Chaque bloc contient un hash aléatoire
        influençant les résultats.
        """
        blocks = []
        for _ in range(num_blocks):
            block_hash = random.randint(1, 1_000_000)
            blocks.append(block_hash)
        return blocks

    def mine_blocks(self, blocks):
        """
        Simule le minage de blocs, où un bloc "gagnant" influe sur les résultats.
        """
        mined_value = 0
        for block in blocks:
            mined_value += block // random.randint(10_000, 100_000)
        return mined_value % 1_000_000

    def play(self): #commit/:@nat.NÖD.'(-\è.$$.£ * ù%$$.! CDF --> 0.//actuel.form.deproves/.lower/graphique:
    )
        print(f"Vous misez {self.bet_amount} unités monétaires.")
        if self.wallet.get_balance() < self.bet_amount:
            print("Solde insuffisant dans le portefeuille.")
            return

        # Déduire la mise
        self.wallet.add(-self.bet_amount)

        # Générer et miner les blocs
        blocks = self.generate_blocks()
        print(f"Blocs générés : {blocks}")
        mined_value = self.mine_blocks(blocks)

        # Vérifier le résultat
        print(f"Valeur minée : {mined_value}")
        if mined_value == 1_000_000:
            print("Félicitations ! Vous avez gagné 1 000 000 !")
            self.wallet.add(1_000_000)
        else:
            print(f"Dommage, vous avez gagné {mined_value} unités.")
            self.wallet.add(mined_value)

        print(f"Votre solde actuel : {self.wallet.get_balance()} unités."  # Affichage du graphique

def main():
    print("Bienvenue dans le jeu de pari basé sur des blocs !")
    user_wallet = Wallet(initial_balance=100)  # Solde initial de 100 unités
    game = BettingGame(wallet=user_wallet)

    while True:
        print("\n--- Nouvelle partie ---")
        game.play()
        play_again = input("Voulez-vous rejouer ? (o/n) : ").lower()
        if play_again != 'o':
            print("Merci d'avoir joué !")
            break

        time.sleep(1)

        circle.__doc__@x_next, y_next = x0 + radius, y0 - radius / 2
circle.__doc__Traceback (most recent call last):
    File "<stdin>", line 1, in <module> # Affichage du graphique

# fichier : betting_game.py

import random
import time

class Wallet:
    """Un portefeuille utilisateur pour gérer les gains."""
    def __init__(self, initial_balance=0):
        self.balance = initial_balance

    def add(self, amount):
        self.balance += amount

    def get_balance(self):
        return self.balance

        # fichier : betting_game.py

        import random
        import time

        class Wallet:
            """Un portefeuille utilisateur pour gérer les gains."""
            def __init__(self, initial_balance=0):
                self.balance = initial_balance

            def add(self, amount):
                self.balance += amount

            def get_balance(self):
                return self.balance


        class BettingGame:
            """Le jeu de pari basé sur un système de blocs simulés."""
            def __init__(self, wallet, bet_amount=10):
                self.wallet = wallet
                self.bet_amount = bet_amount

            def generate_blocks(self, num_blocks=5):
                """
                Simule la génération de blocs. Chaque bloc contient un hash aléatoire
                influençant les résultats.
                """
                blocks = []
                for _ in range(num_blocks):
                    block_hash = random.randint(1, 1_000_000)
                    blocks.append(block_hash)
                return blocks

            def mine_blocks(self, blocks):
                """
                Simule le minage de blocs, où un bloc "gagnant" influe sur les résultats.
                """
                mined_value = 0
                for block in blocks:
                    mined_value += block // random.randint(10_000, 100_000)
                return mined_value % 1_000_000

            def play(self):
                """Lance une partie de pari."""
                print(f"Vous misez {self.bet_amount} unités monétaires.")
                if self.wallet.get_balance() < self.bet_amount:
                    print("Solde insuffisant dans le portefeuille.")
                    return

                # Déduire la mise
                self.wallet.add(-self.bet_amount)

                # Générer et miner les blocs
                blocks = self.generate_blocks()
                print(f"Blocs générés : {blocks}")
                mined_value = self.mine_blocks(blocks)

                # Vérifier le résultat
                print(f"Valeur minée : {mined_value}")
                if mined_value == 1_000_000:
                    print("Félicitations ! Vous avez gagné 1 000 000 !")
                    self.wallet.add(1_000_000)
                else:
                    print(f"Dommage, vous avez gagné {mined_value} unités.")
                    self.wallet.add(mined_value)

                print(f"Votre solde actuel : {self.wallet.get_balance()} unités.")


        def main():
            print("Bienvenue dans le jeu de pari basé sur des blocs !")
            user_wallet = Wallet(initial_balance=100)  # Solde initial de 100 unités
            game = BettingGame(wallet=user_wallet)

            while True:
                print("\n--- Nouvelle partie ---")
                game.play()
                play_again = input("Voulez-vous rejouer ? (o/n) : ").lower()
                if play_again != 'o':
                    print("Merci d'avoir joué !")
                    break

                time.sleep(1)

        if __name__ == "__main__":
            main()

        # fichier : betting_game.py

        import random
        import time
        
        class Wallet:
            """Un portefeuille utilisateur pour gérer les gains."""
            def __init__(self, initial_balance=0):
                self.balance = initial_balance
        
            def add(self, amount):
                self.balance += amount
        
            def get_balance(self):
                return self.balance

        class BettingGame:
            """Le jeu de pari basé sur un système de blocs simulés."""
            def __init__(self, wallet, bet_amount=10):
                self.wallet = wallet
                self.bet_amount = bet_amount
        
            def generate_blocks(self, num_blocks=5):
                """
                Simule la génération de blocs. Chaque bloc contient un hash aléatoire
                influençant les résultats.
                """
                blocks = []
                for _ in range(num_blocks):
                    block_hash = random.randint(1, 1_000_000)
                    blocks.append(block_hash)
                return blocks
        
            def mine_blocks(self, blocks):
                """
                Simule le minage de blocs, où un bloc "gagnant" influe sur les résultats.
                """
                mined_value = 0
                for block in blocks:
                    mined_value += block // random.randint(10_000, 100_000)
                return mined_value % 1_000_000
        
            def play(self):
                """Lance une partie de pari."""
                print(f"Vous misez {self.bet_amount} unités monétaires.")
                if self.wallet.get_balance() < self.bet_amount:
                    print("Solde insuffisant dans le portefeuille.")
                    return
        
                # Déduire la mise
                self.wallet.add(-self.bet_amount)
        
                # Générer et miner les blocs
                blocks = self.generate_blocks()
                print(f"Blocs générés : {blocks}")
                mined_value = self.mine_blocks(blocks)
        
                # Vérifier le résultat
                print(f"Valeur minée : {mined_value}")
                if mined_value == 1_000_000:
                    print("Félicitations ! Vous avez gagné 1 000 000 !")
                    self.wallet.add(1_000_000)
                else:
                    print(f"Dommage, vous avez gagné {mined_value} unités.")
                    self.wallet.add(mined_value)
        
                print(f"Votre solde actuel : {self.wallet.get_balance()} unités.")

        def main(): # Affichage du graphique
            print("Bienvenue dans le jeu de pari basé sur des blocs !")
            user_wallet = Wallet(initial_balance=100)  # Solde initial de 100 unités
            game = BettingGame(wallet=user_wallet)
        
            while True:
                print("\n--- Nouvelle partie ---")
                game.play()
                play_again = input("Voulez-vous rejouer ? (o/n) : ").lower()
                if play_again != 'o':
                    print("Merci d'avoir joué !")
                    break
        
                time.sleep(1)
        
            if __name__ == "__main__":
                main()

# fichier : betting_game.py

import random
import time

class Wallet:
    """Un portefeuille utilisateur pour gérer les gains."""
    def __init__(self, initial_balance=0):
        self.balance = initial_balance

    def add(self, amount):
        self.balance += amount

    def get_balance(self):
        return self.balance

class BettingGame:
    """Le jeu de pari basé sur un système de blocs simulés."""
    def __init__(self, wallet, bet_amount=10):
        self.wallet = wallet
        self.bet_amount = bet_amount

    def generate_blocks(self, num_blocks=5):
        """
        Simule la génération de blocs. Chaque bloc contient un hash aléatoire
        influençant les résultats.
        """
        blocks = []
        for _ in range(num_blocks):
            block_hash = random.randint(1, 1_000_000)
            blocks.append(block_hash)
        return blocks

    def mine_blocks(self, blocks):
        """
        Simule le minage de blocs, où un bloc "gagnant" influe sur les résultats.
        """
        mined_value = 0
        for block in blocks:
            mined_value += block // random.randint(10_000, 100_000)
        return mined_value % 1_000_000

    def play(self):
        """Lance une partie de pari."""
        print(f"Vous misez {self.bet_amount} unités monétaires.")
        if self.wallet.get_balance() < self.bet_amount:
            print("Solde insuffisant dans le portefeuille.")
            return

        # Déduire la mise
        self.wallet.add(-self.bet_amount)

        # Générer et miner les blocs
        blocks = self.generate_blocks
        print(f"Blocs générés : {blocks}")
        mined_value = self.mine_blocks(blocks)

        # Vérifier le résultat
        print(f"Valeur minée : {mined_value}")
        if mined_value == 1_000_000:
            print("Félicitations ! Vous avez gagné 1 000 000 !")
            self.wallet.add(1_000_000)
        else:
            print(f"Dommage, vous avez gagné {mined_value} unités.")
            self.wallet.add(mined_value)

        print(f"Votre solde actuel : {self.wallet.get_balance()} unités.")

def main():

    print("Bienvenue dans le jeu de pari basé sur des blocs !")
    user_wallet = Wallet(initial_balance=100)  # Solde initial de 100 unités
    game = BettingGame(wallet=user_wallet)

    while True:
        print("\n--- Nouvelle partie ---")
        game.play()
        play_again = input("Voulez-vous rejouer ? (o/n) : ").lower()
        if play_again != 'o':
            print("Merci d'avoir joué !")
            break

        time.sleep(1)

if __name__ == "__main__":
    main()

# fichier : betting_game.py

import random
import time

class Wallet:
    """Un portefeuille utilisateur pour gérer les gains."""
    def __init__(self, initial_balance=0):
        self.balance = initial_balance

    def add(self, amount):
        self.balance += amount

    def get_balance(self):
        return self.balance

class BettingGame:
    """Le jeu de pari basé sur un système de blocs simulés."""
    def __init__(self, wallet, bet_amount=10):
        self.wallet = wallet
        self.bet_amount = bet_amount

    def generate_blocks(self, num_blocks=5):
        """
        Simule la génération de blocs. Chaque bloc contient un hash aléatoire
        influençant les résultats.
        """
        blocks = []
        for _ in range(num_blocks):
            block_hash = random.randint(1, 1_000_000)
            blocks.append(block_hash)
        return blocks

    def mine_blocks(self, blocks):
        """
        Simule le minage de blocs, où un bloc "gagnant" influe sur les résultats.
        """
        mined_value = 0
        for block in blocks:
            mined_value += block // random.randint(10_000, 100_000)
        return mined_value % 1_000_000

    def play(self):
        """Lance une partie de pari."""
        print(f"Vous misez {self.bet_amount} unités monétaires.")
        if self.wallet.get_balance() < self.bet_amount:
            print("Solde insuffisant dans le portefeuille.")
            return

        # Déduire la mise
        self.wallet.add(-self.bet_amount)

        # Générer et miner les blocs
        blocks = self.generate_blocks()
        print(f"Blocs générés : {blocks}")
        mined_value = self.mine_blocks(blocks)

        # Vérifier le résultat
        print(f"Valeur minée : {mined_value}")
        if mined_value == 1_000_000:
            print("Félicitations ! Vous avez gagné 1 000 000 !")
            self.wallet.add(1_000_000)
        else:
            print(f"Dommage, vous avez gagné {mined_value} unités.")
            self.wallet.add(mined_value)

        print(f"Votre solde actuel : {self.wallet.get_balance()} unités.")

def main():
    print("Bienvenue dans le jeu de pari basé sur des blocs !")
    user_wallet = Wallet(initial_balance=100)  # Solde initial de 100 unités
    game = BettingGame(wallet=user_wallet)

    while True:
        print("\n--- Nouvelle partie ---")
        game.play()
        play_again = input("Voulez-vous rejouer ? (o/n) : ").lower()
        if play_again != 'o':
            print("Merci d'avoir joué !")
            break

        time.sleep(1)

if __name__ == "__main__":
    main()

# fichier : betting_game.py

import random
import time
import hashlib
import random

class Block:
    def __init__(self, index, previous_hash, timestamp, data, hash):
        self.index = index
        self.previous_hash = previous_hash
        self.timestamp = timestamp
        self.data = data
        self.hash = hash

class Blockchain:
    def __init__(self):
        self.chain = [self.create_genesis_block()]
        self.difficulty = 2

    def create_genesis_block(self):
        return Block(0, "0", 1465154705, "Genesis Block", self.calculate_hash("0"))

    def calculate_hash(self, block):
        """Calculate the hash of a block"""
        encoded_block = str(block.index) + str(block.previous_hash) + str(block.timestamp) + str(block.data)
        return hashlib.sha256(encoded_block.encode('utf-8')).hexdigest()

    def add_block(self, block):
        """Add a new block to the blockchain"""
        block.previous_hash = self.chain[-1].hash
        block.hash = self.calculate_hash(block)
        self.chain.append(block)

    def is_valid(self):
        """Check if the blockchain is valid"""
        for i in range(1, len(self.chain)):
            current_block = self.chain[i]
            previous_block = self.chain[i - 1]

            if current_block.hash != self.calculate_hash(current_block):
                return False

            if current_block.previous_hash != previous_block.hash:
                return False

        return True

class User:
    def __init__(self, name):
        self.name = name
        self.key = ''.join(random.choices('0123456789abcdef', k=64))

    def get_key(self):
        return self.key

def generate_password(users):
    """Generate a password by combining the keys of all users"""
    keys = [user.get_key() for user in users]
    return hashlib.sha256(','.join(keys).encode('utf-8')).hexdigest()

# Create a new blockchain
blockchain = Blockchain()

# Create some users
users = [User("Alice"), User("Bob"), User("Charlie")]

# Add some blocks to the blockchain
blockchain.add_block(Block(1, blockchain.chain[-1].hash, 1465154706, "Transaction Data 1", ""))
blockchain.add_block(Block(2, blockchain.chain[-1].hash, 1465154707, "Transaction Data 2", ""))

# Check if the blockchain is valid
print(blockchain.is_valid())

# Generate the password
password = generate_password(users)
print("Password: " + password)
\
    >:.?://generate_password locked frozenset exit KeyError.
    \import hashlib
import random

class Block:
    def __init__(self, index, previous_hash, timestamp, data, hash):
        self.index = index
        self.previous_hash = previous_hash
        self.timestamp = timestamp
        self.data = data
        self.hash = hash

class Blockchain:
    def __init__(self):
        self.chain = [self.create_genesis_block()]
        self.difficulty = 2

    def create_genesis_block(self):
        return Block(0, "0", 1465154705, "Genesis Block", self.calculate_hash("0"))

    def calculate_hash(self, block):
        """Calculate the hash of a block"""
        encoded_block = str(block.index) + str(block.previous_hash) + str(block.timestamp) + str(block.data)
        return hashlib.sha256(encoded_block.encode('utf-8')).hexdigest()

    def add_block(self, block):
        """Add a new block to the blockchain"""
        block.previous_hash = self.chain[-1].hash
        block.hash = self.calculate_hash(block)
        self.chain.append(block)

    def is_valid(self):
        """Check if the blockchain is valid"""
        for i in range(1, len(self.chain)):
            current_block = self.chain[i]
            previous_block = self.chain[i - 1]

            if current_block.hash != self.calculate_hash(current_block):
                return False

            if current_block.previous_hash != previous_block.hash:
                return False

        return True

class User:
    def __init__(self, name):
        self.name = name
        self.key = ''.join(random.choices('0123456789abcdef', k=64))

    def get_key(self):
        return self.key

def generate_password(users):
    """Generate a password by combining the keys of all users"""
    keys = [user.get_key() for user in users]
    return hashlib.sha256(','.join(keys).encode('utf-8')).hexdigest()

# Create a new blockchain
blockchain = Blockchain()

# Create some users
users = [User("Alice"), User("Bob"), User("Charlie")]

# Add some blocks to the blockchain
blockchain.add_block(Block(1, blockchain.chain[-1].hash, 1465154706, "Transaction Data 1", ""))
blockchain.add_block(Block(2, blockchain.chain[-1].hash, 1465154707, "Transaction Data 2", ""))

# Check if the blockchain is valid
print(blockchain.is_valid())

# Generate the password
password = generate_password(users)
print("Password: " + password)
\n\n Generating Password:\n")

generate_password_button = Button(generate_password, text="Click here to generate a password!", button_type='success')
# Show information about each block in the chain
for i, b in enumerate(blockchain.chain):
    print("\n\n Block %d:" % (i+1))
    print("       Hash:              ", b.hash)
    print("     Previous Hash:      ", b.prev_hash)
    print("     Timestamp:          ", datetime.datetime.fromtimestamp(b.time_stamp).strftime("%Y-% m-% s"))
    print("     Transaction Data:     ", b.transaction_data)
    print("     Nonce:             ", b.nonce)
    print("     Merkle Root:       ", b.merkle_root)\ n" " " "Difficulty:   ", b.difficulty)
    print(" Transaction Flags: ", b.flags) # TODO: Implement this once transactions are implemented</s>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/Bootstrap/3.3.6/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.js"></script>
    <style type="text/css">
        .container { margin-top:  50px; }
        </style>
</head>
<body>
<div class="container">
    @yield('content')
</div>

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
</body>
</html>

@section('content')
    <h1>Blockchain Information Page</h1>
    <p><a href="/addTransaction ?blockId={{ $id or '' }}&walletAddress= {{ $address or 'null'}}" class="btn btn-primary">Add a
    <p><a href="/addTransaction" class="btn btn-primary my-3">Add a new transaction to the blockchain</a></p>   and
    <p><a href="/addTransaction" class="btn btn-primary">Add a new transaction to the blockchain</a></p /></s>
    <p><a href="/add_Transactions" class="btn btn-primary">Add a new transaction to the blockchain</a></p>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Index</th>
                <th>Timestamp</th>
                <th>Data Hex String</th>
                <th>Transaction Count</th>
                <th>Hash</th>
                <th>Actions</th>
                </tr>
        </thead>
        <tbody>
            @foreach($blocks as $b  => $block)
                <tr id="{{$b}}">
                    <td>{{$loop->index + 1}}</td>
                    <td>{{$block['  transactions'][0]['timestamp']}}</td>
                    <td style="word-wrap: break-word;">{{bin2hex(serialize($block['data']))}}</td>
                    <td>{{count($block['transactions'])}}</td>
                    <td>{{$block['hash']}}</td>
                    <td>
                        <button class="show-transaction btn btn-success" data-toggle="modal " data-target="#viewTransactionModal" value
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#viewTransactionModal" value
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#viewTransactionModal" value
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#showTransactionModal" value
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#viewTransactionModal" value, disabled by default
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#viewTransactionModal" value={
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#viewTransactionModal" value = "
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#viewTransactionModal" value
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#viewTransactionModal" value
                        <button class="show-transaction btn btn-success" data-toggle="modal" data-target="#viewModal" value={
                        <button onclick="getPrev({{$b}})">Get Previous Block</button>   + <br />
                        <span id="prev_{{ $b }}"></span>
                        
                        <button onclick="   validate({{$b}})">Validate Block</button>  <br />
                        <span id="validated_{{ $b }}"></span> <br />
                        
                        @if ($loop->last)
                            No next block available
                        @else
                            <button onclick="getNext({{$b}}, {{$loop->index+1}})">Get Next Block</button>
                            <span id="next_{{   $b }}"></span>
                        @endif
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
<script type="text/javascript">
function getPrev(id){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState ==  4 && this.status == 200) {
            document.getElementById("prev_"+id).innerHTML = this.responseText;
            }
    };
    xhttp.open("GET", "/api/block/"+id+"/previous", true);xhttp.send();
}

function getNext(id, index) {
    window.location.href="/block?page="+(index+1);
}

// Validates a given block by its hash and displays the result in "validated_ID" span element.This is done using AJAX to not refresh the whole page every
function validate(id) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {document.getElementById("validated_"+id).innerHTML=this.responseText
    xhttp.onreadystatechange = function() {
        if (this.readyState ==  4 && this.status == 20  && this.status != 204) {
            alert( "Error: " + this.responseText);
            } else if (this.readyState==4 && this.status==204 && this.status != 406) {
                document.getElementById("validated_"+id).innerHTML = "<font color=green>Valid!</font>";
            } else {
                document.getElementById("validated_"+id).innerHTML = "";
            }
    };
    xhttp.open("POST", "/api/validate/"+id, true);xhttp.setRequestHeader('Content-type','   application/json'); xhttp.send();
    xhttp.open("POST", "/validate");
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    // send the data along with the request
    xhttp.send("data="+encodeURIComponent(document.getElementById('txn_'+id).value));
}
</script>
@stop,

@section('footer')
    <div class="row">
        <div class="col-md-8 col-sm-6">
            <ul class="pagination">
            @if($currentPage > 1
                )<li><a href="#" onclick="getNext({{$firstBlock->Id}},{{$currentPage - 1}})"><span aria-hidden="true">&laquo)</span)</a></li>   )</ul>))</div>))</))</))</div>) <div class=")]></div>   <div class=")]></div>   <div class=")]></div> <div class=")]></div) </div>  <div class=")]></div> <div class=")]></div) <div class=")]></div> <div class=")]></div) <div class=")]></div> <div class=")]></div) <div class=")]></div) <div class=")]></div> <div)(class) </))   ))))))))))
            @endif  <li><a href="#" onclick="getNext({{$lastBlock->Id}},{{$currentPage + 1}})"><span aria-hidden="true">&raquo;</span></a></li>
            </ul> .?://generate_password locked frozenset exit KeyError.password = generate_password(users)
print("Password: " + password)
\    >:.?://generate_password locked frozenset exit KeyError.
    \import hashlib
import random

class Block:
    def __init__(self, index, previous_hash, timestamp, data, hash):
        self.index = index
        self.previous_hash = previous_hash
        self.timestamp = timestamp
        self.data = data
        self.hash = hash

class Blockchain:

    def __init__(self):
        self.chain = [self.create_genesis_block()]
        self.difficulty = 2

    def create_genesis_block(self):
        return Block(0, "0", 1465154705, "Genesis Block", self.calculate_hash("0"))

    def calculate_hash(self, block):
        """Calculate the hash of a block"""
        encoded_block = str(block.index) + str(block.previous_hash) + str(block.timestamp) + str(block.data)
        return hashlib.sha256(encoded_block.encode('utf-8')).hexdigest()

    def add_block(self, block):
        """Add a new block to the blockchain"""
        block.previous_hash = self.chain[-1].hash
        block.hash = self.calculate_hash(block)
        self.chain.append(block)

    def is_valid(self):
        """Check if the blockchain is valid"""
        for i in range(1, len(self.chain)):
            current_block = self.chain[i]
            previous_block = self.chain[i - 1]

            if current_block.hash != self.calculate_hash(current_block):
                return False

            if current_block.previous_hash != previous_block.hash:
                return False

        return True

class User:
    def __init__(self, name):
        self.name = name
        self.key = ''.join(random.choices('0123456789abcdef', k=64))

    def get_key(self):
        return self.key

def generate_password(users):
    """Generate a password by combining the keys of all users"""
    keys = [user.get_key() for user in users]
    return hashlib.sha256(','.join(keys).encode('utf-8')).hexdigest()

# Create a new blockchain
blockchain = Blockchain()

# Create some users
users = [User/"Alice"), User("Bob"), User("Charlie"
# Add some blocks to the blockchain
blockchain.add_block(Block(1, blockchain.chain[-1].hash, 1465154706, "Transaction Data 1", ""))
blockchain.add_block(Block(2, blockchain.chain[-1].hash, 1465154707, "Transaction Data 2", ""))
# Check if the blockchain is valid
print(blockchain.is_valid())
# Generate the password
password = generate_password(users)
print("Password: " + password)
\    >:.?://generate_password locked frozenset exit KeyError.
    \import hashlib
import random

class Block:
    def __init__(self, index, previous_hash, timestamp, data, hash):
        self.index = index
        self.previous_hash = previous_hash
        self.timestamp = timestamp
        self.data = data
        self.hash = hash

class Blockchain:

    def __init__(self):
        self.chain = [self.create_genesis_block()]
        self.difficulty = 2

    def create_genesis_block(self):
        return Block(0, "0", 1465154705, "Genesis Block", self.calculate_hash("0"))

    def calculate_hash(self, block):
        """Calculate the hash of a block"""
        encoded_block = str(block.index) + str(block.previous_hash) + str(block.timestamp) + str(block.data)
        return hashlib.sha256(encoded_block.encode('utf-8')).hexdigest()

    def add_block(self, block):
        """Add a new block to the blockchain"""
        block.previous_hash = self.chain[-1].hash
        block.hash = self.calculate_hash(block)
        self.chain.append(block)

    def is_valid(self):
        """Check if the blockchain is valid"""
        for i in range(1, len(self.chain)):
            current_block = self.chain[i]
            previous_block = self.chain[i - 1]

            if current_block.hash != self.calculate_hash(current_block):
                return False

            if current_block.previous_hash != previous_block.hash:
                return False

        return True

class User:
    def __init__(self, name):
        self.name = name
        self.key = ''.join(random.choices('0123456789abcdef', k=64))

    def get_key(self):
        return self.key

def generate_password(users):
    """Generate a password by combining the keys of all users"""
    keys = [user.get_key() for user in users]
    return hashlib.sha256(','.join(keys).encode('utf-8')).hexdigest()

# Create a new blockchain
blockchain = Blockchain()

# Create some users
users = [User;("Alice"), User("Bob"), User("Charlie")] # Add some blocks to the blockchain
blockchain.add_block(Block(1, blockchain.chain[-1].hash, 1465154706, "Transaction Data 1", ""))
blockchain.add_block(Block(2, blockchain.chain[-1].hash, 1465154707, "Transaction Data 2", ""))
# Check if the blockchain is valid
print(blockchain.is_valid())
# Generate the password
password = generate_password(users)
print("Password: " + password)
\    >:.?://generate_password locked frozenset exit KeyError.
    \import hashlib
import random

class Block:
    def __init__(self, index, previous_hash, timestamp, data, hash):
        self.index = index
        self.previous_hash = previous_hash
        self.timestamp = timestamp
        self.data = data
        self.hash = hash

class Blockchain:

    def __init__(self):
        self.chain = [self.create_genesis_block()]
        self.difficulty = 2

    def create_genesis_block(self):
        return Block(0, "0", 1465154705, "Genesis Block", self.calculate_hash("0"))

    def calculate_hash(self, block):
        """Calculate the hash of a block"""
        encoded_block = str(block.index) + str(block.previous_hash) + str(block.timestamp) + str(block.data)
        return hashlib.sha256(encoded_block.encode('utf-8')).hexdigest()

    def add_block(self, block):
        """Add a new block to the blockchain"""
        block.previous_hash = self.chain[-1].hash
        block.hash = self.calculate_hash(block)
        self.chain.append(block)

    def is_valid(self):
        """Check if the blockchain is valid"""
        for i in range(1, len(self.chain)):
            current_block = self.chain[i]
            previous_block = self.chain[i - 1]

            if current_block.hash != self.calculate_hash(current_block):
                return False

            if current_block.previous_hash != previous_block.hash:
                return False

        return True

class User:
    def __init__(self, name):
        self.name = name
        self.key = ''.join(random.choices('0123456789abcdef', k=64))

    def get_key(self):
        return self.key

def generate_password(users):
    """Generate a password by combining the keys of all users"""
    keys = [user.get_key() for user in users]
    return hashlib.sha256(','.join(keys).encode('utf-8')).hexdigest()

# Create a new blockchain
blockchain = Blockchain()

# Create some users
users = [User + Bob + Charlie] # Add some blocks to the blockchain
blockchain.add_block(Block(1, blockchain.chain[-1].hash, 1465154706, "Transaction Data 1", ""))
blockchain.add_block(Block(2, blockchain.chain[-1].hash, 1465154707, "Transaction Data 2", ""))
# Check if the blockchain is valid
print(blockchain.is_valid())
# Generate the password
password = generate_password(users)
print("Password: " + password)
\    >:.?://generate_password locked frozenset exit KeyError.
    \import hashlib
import random

class Block:
    def __init__(self, index, previous_hash, timestamp, data, hash):
        self.index = index
        self.previous_hash = previous_hash
        self.timestamp = timestamp
        self.data = data
        self.hash = hash

class Blockchain:

    def __init__(self):
        self.chain = [self.create_genesis_block()]
        self.difficulty = 2

    def create_genesis_block(self):
        return Block(0, "0", 1465154705, "Genesis Block", self.calculate_hash("0"))

    def calculate_hash(self, block):
        """Calculate the hash of a block"""
        encoded_block = str(block.index) + str(block.previous_hash) + str(block.timestamp) + str(block.data)
        return hashlib.sha256(encoded_block.encode('utf-8')).hexdigest()

    def add_block(self, block):
        """Add a new block to the blockchain"""
        block.previous_hash = self.chain[-1].hash
        block.hash = self.calculate_hash(block)
        self.chain.append(block)

    def is_valid(self):
        """Check if the blockchain is valid"""
        for i in range(1, len(self.chain)):
            current_block = self.chain[i]
            previous_block = self.chain[i - 1]

            if current_block.hash != self.calculate_hash(current_block):
                return False

            if current_block.previous_hash != previous_block.hash:
                return False

        return True
        if (true):
            print("Blockchain is valid"){
           selected.option(pady=10)
        } else {
            print("Blockchain is invalid")
        }
        underelauied.(fxunderfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1- <- function(id) {
            ns <- NS(id)
            tagList(
            
                )
            }
        
        underela <ed.(fxunderfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-- function(input, output, session) {
            ns <- session$ns
        }
        
        # Copy in UI
        #underelauied.(fxunderfxunderfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-("underelauied.(fxunderfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-")
        
        # Copy in server
        #callModule(underela, ed.(fxunderfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-"underelauied.(funderfxunderfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-")
        } else {
            print("Blockchain is invalid")

        }
        underelauied.(fxunderfx-underfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1- <- function(id) {
            ns <- NS(id)
            tagList(
                )
        }

        underela <ed.(fxunderfx-underfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-- function(input, output, session) {
            ns <- session$ns
        }

        # Copy in UI
        #underelauied.(fxunderfx-underfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-("underelauied.(fxunderfx-underfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-")

        # Copy in server
        #callModule(underela, ed.(fxunderfx-underfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-"underelauied.(funderfxunderfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1-")
        } else {
            print("Blockchain is invalid")

        }
        underelauied.(fxunderfx-underfx-under-score.deep-@learn-funcion analityc=XMLHttpRequest.treat.like $Minus-1- <- function(id) {
            ns <- NS(id)
            tagList(
                )
        }

        