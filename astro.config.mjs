// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from "@tailwindcss/vite";

// https://astro.build/config
export default defineConfig({
    server: { port: 1312 },
    vite: {
        plugins: [
            tailwindcss()
        ]
    }
});
