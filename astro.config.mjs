// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from "@tailwindcss/vite";

import sitemap from '@astrojs/sitemap';
import compressor from 'astro-compressor';

// https://astro.build/config
export default defineConfig({
    server: { port: 1312 },
    vite: {
        plugins: [
            sitemap(),
            compressor(),
            tailwindcss()
        ]
    }
});
