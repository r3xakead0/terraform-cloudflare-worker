export default {
  async fetch(request) {
    const url = new URL(request.url);

    if (url.pathname === "/") {
      return new Response("Hello from Cloudflare Worker with Terraform!", {
        headers: { "content-type": "text/plain" }
      });
    }

    if (url.pathname === "/time") {
      return new Response(
        JSON.stringify({ time: new Date().toISOString() }),
        { headers: { "content-type": "application/json" } }
      );
    }

    return new Response("404 Not Found", { status: 404 });
  }
};
