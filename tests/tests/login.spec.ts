import { test, expect } from '@playwright/test';

test('Validar login exitoso', async ({ page }) => {
  // 1. Navegar a la página de login
  await page.goto('https://tk-gr.demo.goodrabbit.tech/signin');

  // 2. Ingresar usuario
  await page.getByRole('textbox', { name: 'Nombre de usuario' }).fill('admin');
  
  // 3. Ingresar clave
  await page.getByRole('textbox', { name: 'Contraseña' }).fill('contraseña'); 

  // 4. Hacer clic en iniciar sesión
  await page.getByRole('button', { name: 'Iniciar sesión' }).click();

  // 5. Esperar a que aparezca el botón "Cerrar sesión" para validar que entramos.
  await expect(page.getByRole('button', { name: 'Cerrar sesión' })).toBeVisible({ timeout: 30000 });
});