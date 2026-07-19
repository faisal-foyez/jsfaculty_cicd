import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import { viteStaticCopy } from 'vite-plugin-static-copy'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    react(),
    // viteStaticCopy({
    //   targets: [
    //     {
    //       // Path relative to your project root
    //       src: 'appspec.yml', 
    //       // Copies to: dist/custom-folder/my-custom-file.pdf
    //       dest: '.' 
    //     },
    //     {
    //       // Copies an entire folder structure
    //       src: 'scripts/**/*', 
    //       // Copies directly into the root of dist/
    //       dest: '.' 
    //     }
    //   ]
    // })
  ],
})
