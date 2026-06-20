import { serveDir } from "jsr:@std/http/file-server"; Deno.serve((req) => serveDir(req, { fsRoot: ".", // This tells it to look in your main folder for files showDirListing: true, }));
