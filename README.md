# mcp-server-ghibli MCP Server

A TypeScript-based MCP server that provides AI image and video generation capabilities through a simple interface.

> **Note**: This server requires an API key from [GPT4O Image Generator](https://www.gpt4oimg.com/). Please visit the website to obtain your API key before using this service.

## Features

### Tools

#### 1. Image to Video Conversion
- `image_to_video` - Convert static images into animated videos
  - Required parameters:
    - `image`: Base64 encoded image or image URL
    - `api_key`: Authentication key
  - Optional parameters:
    - `prompt`: Text prompt to guide video generation (default: "in the style of ghibli")
    - `aspect_ratio`: Output video aspect ratio (default: "9:16")
    - `negative_prompt`: Negative prompt to guide generation (default: "bad prompt")

#### 2. Points Management
- `get_points` - Check remaining API credits
  - Required parameters:
    - `api_key`: Authentication key

#### 3. Task Management
- `get_task_result` - Check the status of a video generation task
  - Required parameters:
    - `taskId`: Task ID returned from image_to_video
    - `api_key`: Authentication key

## Development

Install dependencies:
```bash
npm install
```

Build the server:
```bash
npm run build
```

For development with auto-rebuild:
```bash
npm run watch
```

## Installation

To use with Claude Desktop, add the server config:

On MacOS: `~/Library/Application Support/Claude/claude_desktop_config.json`
On Windows: `%APPDATA%/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "mcp-server-ghibli": {
      "command": "/path/to/mcp-server-ghibli/build/index.js"
    }
  }
}
```

### Debugging

Since MCP servers communicate over stdio, debugging can be challenging. We recommend using the [MCP Inspector](https://github.com/modelcontextprotocol/inspector), which is available as a package script:

```bash
npm run inspector
```

The Inspector will provide a URL to access debugging tools in your browser.
