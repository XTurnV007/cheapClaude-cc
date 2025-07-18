# cheapClaude CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | **Deutsch** | [Español](README_ES.md) | [Русский](README_RU.md)

Verwenden Sie günstigere Claude-Modelle (claude-opus-4-20250514), um Ihren Claude Code zu betreiben.

[Umfassende Forschung zu claude-opus-4-20250514 Leistungsparametern](https://www.anthropic.com/claude/opus)

## Schnelle Installation

1. Gehen Sie zur CursorAI Open Platform, um einen API-Schlüssel zu beantragen.

Klicken Sie hier: [CursorAI Open Platform](https://api.cursorai.art/register?aff=xoXg/)

Rechts oben Konsole -> API-Token -> Token hinzufügen -> Nach unten scrollen -> In den Gruppeneinstellungen setzen Sie Ihren Token auf die **Reine AZ**-Gruppe

2. Schnelle Installation - Sie werden aufgefordert, Ihren API-Schlüssel einzugeben, dann drücken Sie Enter zum Abschluss.

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/XTurnV007/cheapClaude-cc/refs/heads/main/install.sh)"
```

3. Beginnen Sie mit der kostengünstigen Nutzung von Claude Code.

```shell
claude
```

## Funktionen

- **Kosteneffektiv**: Verwenden Sie Cursor Ais wettbewerbsfähige Preise anstelle der direkten Anthropic-API
- **Einfache Einrichtung**: Ein-Befehl-Installation mit automatischer Konfiguration
- **Nahtlose Integration**: Funktioniert mit bestehenden Claude Code-Workflows
- **Neuestes Modell**: Angetrieben von Cursor Ais claude-opus-4-20250514-Modell

## Was der Installer macht

Das Installationsskript führt automatisch aus:
1. Überprüft und installiert Node.js (v18+) bei Bedarf
2. Installiert Claude Code global über npm
3. Konfiguriert Claude Code, um das Onboarding zu überspringen
4. Fordert Ihren CursorAi-API-Schlüssel an
5. Richtet Umgebungsvariablen ein, um API-Aufrufe an Cursor Ais Server umzuleiten

## Manuelle Konfiguration

Wenn Sie manuell konfigurieren möchten, setzen Sie diese Umgebungsvariablen:

```bash
export ANTHROPIC_BASE_URL=https://api.cursorai.art/anthropic/
export ANTHROPIC_API_KEY=your_CursorAi_api_key_here
```

## Support

Bei Problemen oder Fragen besuchen Sie bitte die [Cursor Ai Open Platform](https://api.cursorai.art/register?aff=xoXg) oder überprüfen Sie die ursprüngliche Claude Code-Dokumentation. 