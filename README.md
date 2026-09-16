# 🧪 GoodRabbit QA Challenge

Repositorio oficial que contiene la solución completa para el challenge técnico de control de calidad (QA Manual, API, Bug Report y Automatización UI) para el sistema **Timekeeper de GoodRabbit**.

---

## 📁 Estructura del Repositorio

*   **`api/`**: Contiene la colección de Postman exportada (`.json`) con el flujo E2E completo y aserciones automatizadas de tiempo y estado.
*   **`documentacion/`**: Incluye los casos de prueba en formato Gherkin (BDD) y el reporte formal del bug crítico en formato Word y PDF con evidencia técnica de red.
*   **`tests/`**: Proyecto de automatización UI desarrollado con **Playwright y TypeScript** optimizado para pruebas en Chromium.

---

## 🚀 Guía rápida de ejecución

### 1. Pruebas de API (Postman)
1. Abre **Postman**.
2. Haz clic en **Import** y selecciona el archivo `.json` ubicado dentro de la carpeta `api/`.
3. La colección incluye los requests estructurados (*Auth*, *Employee*, *Timekeeper* y *Scheduler*) con credenciales listas para verificar el flujo de negocio.

### 2. Automatización UI (Playwright)
Para ejecutar las pruebas end-to-end automatizadas en el navegador:
```bash
# Entra a la carpeta de tests
cd tests

# Instala las dependencias (si es necesario)
npm install

# Ejecuta la prueba de login en modo visible (headed)
npx playwright test tests/login.spec.ts --headed

## 📊 Resumen de Hallazgos y Entregables
* **Casos de Prueba (BDD):** Escenarios detallados cubriendo caminos felices y de borde en el sistema de recursos humanos.
* **Bug Report Crítico:** Detección y aislamiento de un problema de latencia severa en el backend (**TTFB > 13s** en el endpoint de autenticación), respaldado por el desglose de red de Postman.
* **QA Automation:** Script robusto en Playwright con manejo de tiempos de espera adaptados para validar de forma autónoma el ingreso al panel principal.

---
*Desarrollado por Sebastián Sanhueza - QA Engineer*
