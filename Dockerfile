FROM denoland/deno

WORKDIR /app
COPY . .

USER deno
CMD  deno run --allow-net --allow-read --allow-env --allow-sys https://deno.land/std/http/file_server.ts -p5000 --no-dotfiles
