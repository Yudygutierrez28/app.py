import streamlit as st
import matplotlib.pyplot as plt

# ------------------
# Datos de las gráficas
# ------------------

grafica1_labels = [
    "Clientes Notificados",
    "Clientes Cancelados",
    "Líneas Totales Canceladas",
    "A la espera de respuesta final de año"
]

grafica1_values = [21, 9, 18, 7]

grafica2_labels = ["UPS Alarmadas en el mes", "Desalarmadas Remotamente"]
grafica2_values = [19, 13]

grafica3_labels = ["Total UPS Outsourcing", "UPS Outsourcing Monitoreadas"]
grafica3_values = [97, 76]

grafica4_labels = ["Modems WiFi Disponibles", "Modems 2G Disponibles", "Modems 4G Disponibles"]
grafica4_values = [23, 32, 0]

# ------------------
# Interfaz Streamlit
# ------------------

st.title("Dashboard de Métricas UPS y Modems")
st.write("Este dashboard presenta las 4 gráficas generadas a partir de los datos suministrados.")

st.subheader("Gráfica 1 — Clientes y Líneas Canceladas")
fig1, ax1 = plt.subplots()
ax1.bar(grafica1_labels, grafica1_values)
plt.xticks(rotation=45, ha='right')
st.pyplot(fig1)

st.subheader("Gráfica 2 — UPS Alarmadas y Desalarmadas")
fig2, ax2 = plt.subplots()
ax2.bar(grafica2_labels, grafica2_values)
st.pyplot(fig2)

st.subheader("Gráfica 3 — UPS Outsourcing")
fig3, ax3 = plt.subplots()
ax3.bar(grafica3_labels, grafica3_values)
st.pyplot(fig3)

st.subheader("Gráfica 4 — Modems Disponibles")
fig4, ax4 = plt.subplots()
ax4.bar(grafica4_labels, grafica4_values)
plt.xticks(rotation=45, ha='right')
st.pyplot(fig4)

st.write("Dashboard generado automáticamente. Puedes subir este archivo a Streamlit Cloud o HuggingFace para ejecutarlo online.")
