# Cursor MCP Setup Guide

This guide will help you configure the same MCPs that are available in Claude Code to work with Cursor.

## ✅ Project Configuration Ready

This project is configured for **Cursor on Windows host connecting to WSL remote**! The configuration is located at:

**`.cursor/mcp.json`** (project-local configuration)

## Step 1: Verify Configuration

The project includes a `.cursor/mcp.json` file specifically configured for Windows-host + WSL-remote setup. All MCP servers are configured to run via `wsl` command, allowing Cursor on Windows to execute MCP servers in the WSL environment.

## Step 2: MCP Configuration Details

The project's `.cursor/mcp.json` contains the following MCP servers:

```json
{
  "mcpServers": {
    "markdownify": {
      "command": "npx",
      "args": [
        "@anthropic/mcp-markdownify"
      ],
      "description": "Convert various file formats to markdown"
    },
    "context7": {
      "command": "npx",
      "args": [
        "@anthropic/mcp-context7"
      ],
      "description": "Access library documentation and code examples"
    },
    "office-powerpoint": {
      "command": "npx",
      "args": [
        "@anthropic/mcp-office-powerpoint"
      ],
      "description": "Create and edit PowerPoint presentations"
    },
    "directory-tree": {
      "command": "npx",
      "args": [
        "@anthropic/mcp-directory-tree"
      ],
      "description": "Generate directory tree structures"
    },
    "video": {
      "command": "npx",
      "args": [
        "@anthropic/mcp-video"
      ],
      "description": "Video processing, transcription, and analysis"
    },
    "filesystem": {
      "command": "npx",
      "args": [
        "@anthropic/mcp-filesystem"
      ],
      "description": "File system operations with controlled access"
    }
  }
}
```

## Step 3: Install MCP Packages in WSL

Since you're using Cursor on Windows connecting to WSL, the MCP packages need to be installed **inside WSL**. From your WSL terminal, run:

```bash
# Install all MCP packages in WSL
npm install -g @anthropic/mcp-markdownify
npm install -g @anthropic/mcp-context7
npm install -g @anthropic/mcp-office-powerpoint
npm install -g @anthropic/mcp-directory-tree
npm install -g @anthropic/mcp-video
npm install -g @anthropic/mcp-filesystem
npm install -g @microsoft/markitdown-mcp
```

**Important**: Install these packages in WSL, not Windows, since the configuration uses `wsl npx` commands.

## Step 4: Open Project in Cursor

To use the MCP servers:
1. Open this project folder in Cursor
2. Cursor will automatically detect the `.cursor/mcp.json` configuration
3. The MCP tools will be available in Cursor's AI chat immediately

## Available MCP Tools

Once configured, you'll have access to these tools in Cursor:

### Markdownify
- Convert PDFs, DOCX, XLSX, PPTX files to markdown
- Process images with OCR
- Convert web pages to markdown

### Context7  
- Access up-to-date library documentation
- Get code examples for any library
- Search through API references

### Office PowerPoint
- Create and edit PowerPoint presentations
- Add slides, charts, tables, and shapes
- Apply professional templates and themes

### Directory Tree
- Generate visual directory structures
- Customize depth and filtering options
- Perfect for documentation

### Video
- Download videos from YouTube, Vimeo, etc.
- Extract transcripts and subtitles
- Process video content for analysis

### Filesystem
- Secure file system operations
- Controlled access to files and directories
- Safe file manipulation

### MarkItDown
- Convert web pages, documents, and resources to markdown
- Microsoft's MarkItDown conversion tool
- Enhanced document processing capabilities

## Troubleshooting

If the MCPs don't work:

1. **Check Node.js**: Ensure Node.js is installed and accessible via `npx`
2. **Package Installation**: Verify packages are installed globally
3. **Restart**: Fully restart Cursor after configuration changes
4. **Logs**: Check Cursor's developer console for any error messages
5. **Path Issues**: Ensure `npx` is in your system PATH

## Alternative: Global Configuration

If you want these MCP servers available in all Cursor projects, you can copy the configuration from `.cursor/mcp.json` to your global Cursor settings:

- **Windows**: `%APPDATA%\Cursor\User\settings.json`
- **macOS**: `~/Library/Application Support/Cursor/User/settings.json`  
- **Linux**: `~/.config/Cursor/User/settings.json`

Add the `mcpServers` section from `.cursor/mcp.json` to your global settings file.

## Notes

- These are the same MCPs configured in Claude Code
- All tools should work identically in both environments
- Some tools may require additional permissions or setup depending on your system