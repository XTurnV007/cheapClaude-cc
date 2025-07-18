# cheapClaude CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | **Español** | [Русский](README_RU.md)

Usa modelos Claude más baratos (claude-opus-4-20250514) para impulsar tu Claude Code.

[Investigación completa sobre parámetros de rendimiento de claude-opus-4-20250514](https://www.anthropic.com/claude/opus)

## Instalación rápida

1. Ve a la plataforma abierta CursorAI para solicitar una clave API.

Haz clic para visitar: [Plataforma abierta CursorAI](https://api.cursorai.art/register?aff=xoXg/)

Esquina superior derecha Consola -> Tokens API -> Agregar token -> Desplázate hacia abajo -> En la configuración de grupo, establece tu token en el grupo **AZ puro**

2. Instalación rápida - se te pedirá que ingreses tu clave API, luego presiona Enter para completar.

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/XTurnV007/cheapClaude-cc/refs/heads/main/install.sh)"
```

3. Comienza a usar Claude Code a bajo costo.

```shell
claude
```

## Características

- **Rentable**: Usa los precios competitivos de Cursor Ai en lugar de la API directa de Anthropic
- **Configuración fácil**: Instalación de un comando con configuración automática
- **Integración perfecta**: Funciona con flujos de trabajo existentes de Claude Code
- **Modelo más reciente**: Impulsado por el modelo claude-opus-4-20250514 de Cursor Ai

## Lo que hace el instalador

El script de instalación automáticamente:
1. Verifica e instala Node.js (v18+) si es necesario
2. Instala Claude Code globalmente a través de npm
3. Configura Claude Code para saltar la incorporación
4. Solicita tu clave API de CursorAi
5. Configura variables de entorno para redirigir llamadas API a los servidores de Cursor Ai

## Configuración manual

Si prefieres configurar manualmente, establece estas variables de entorno:

```bash
export ANTHROPIC_BASE_URL=https://api.cursorai.art/anthropic/
export ANTHROPIC_API_KEY=your_CursorAi_api_key_here
```

## Soporte

Para problemas o preguntas, visita la [Plataforma abierta Cursor Ai](https://api.cursorai.art/register?aff=xoXg) o consulta la documentación original de Claude Code. 