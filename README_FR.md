# cheapClaude CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | **Français** | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

Utilisez des modèles Claude moins chers (claude-opus-4-20250514) pour alimenter votre Claude Code.

[Recherche complète sur les paramètres de performance de claude-opus-4-20250514](https://www.anthropic.com/claude/opus)

## Installation rapide

1. Rendez-vous sur la plateforme ouverte CursorAI pour demander une clé API.

Cliquez pour visiter : [Plateforme ouverte CursorAI](https://api.cursorai.art/register?aff=xoXg/)

Coin supérieur droit Console -> Jetons API -> Ajouter un jeton -> Faites défiler vers le bas -> Dans les paramètres de groupe, définissez votre jeton sur le groupe **AZ pur**

2. Installation rapide - vous serez invité à saisir votre clé API, puis appuyez sur Entrée pour terminer.

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/XTurnV007/cheapClaude-cc/refs/heads/main/install.sh)"
```

3. Commencez à utiliser Claude Code à faible coût.

```shell
claude
```

## Fonctionnalités

- **Rentable** : Utilisez les prix compétitifs de Cursor Ai au lieu de l'API Anthropic directe
- **Configuration facile** : Installation en une commande avec configuration automatique
- **Intégration transparente** : Fonctionne avec les flux de travail Claude Code existants
- **Modèle le plus récent** : Alimenté par le modèle claude-opus-4-20250514 de Cursor Ai

## Ce que fait l'installateur

Le script d'installation fait automatiquement :
1. Vérifie et installe Node.js (v18+) si nécessaire
2. Installe Claude Code globalement via npm
3. Configure Claude Code pour ignorer l'intégration
4. Demande votre clé API CursorAi
5. Configure les variables d'environnement pour rediriger les appels API vers les serveurs de Cursor Ai

## Configuration manuelle

Si vous préférez configurer manuellement, définissez ces variables d'environnement :

```bash
export ANTHROPIC_BASE_URL=https://api.cursorai.art/anthropic/
export ANTHROPIC_API_KEY=your_CursorAi_api_key_here
```

## Support

Pour les problèmes ou questions, veuillez visiter la [Plateforme ouverte Cursor Ai](https://api.cursorai.art/register?aff=xoXg) ou consultez la documentation originale de Claude Code. 