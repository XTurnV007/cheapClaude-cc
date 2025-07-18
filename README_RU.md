# cheapClaude CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | [한국어](README_KO.md) | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | **Русский**

Используйте более дешевые модели Claude (claude-opus-4-20250514) для работы с Claude Code.

[Комплексное исследование параметров производительности claude-opus-4-20250514](https://www.anthropic.com/claude/opus)

## Быстрая установка

1. Перейдите на открытую платформу CursorAI, чтобы подать заявку на API ключ.

Нажмите для перехода: [Открытая платформа CursorAI](https://api.cursorai.art/register?aff=xoXg/)

Правый верхний угол Консоль -> API токены -> Добавить токен -> Прокрутите вниз -> В настройках группы установите ваш токен в группу **Чистый AZ**

2. Быстрая установка - вам будет предложено ввести ваш API ключ, затем нажмите Enter для завершения.

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/XTurnV007/cheapClaude-cc/refs/heads/main/install.sh)"
```

3. Начните использовать Claude Code с низкими затратами.

```shell
claude
```

## Особенности

- **Экономически эффективно**: Используйте конкурентоспособные цены Cursor Ai вместо прямого API Anthropic
- **Простая настройка**: Установка одной командой с автоматической конфигурацией
- **Бесшовная интеграция**: Работает с существующими рабочими процессами Claude Code
- **Последняя модель**: Работает на модели claude-opus-4-20250514 от Cursor Ai

## Что делает установщик

Скрипт установки автоматически:
1. Проверяет и устанавливает Node.js (v18+) при необходимости
2. Устанавливает Claude Code глобально через npm
3. Настраивает Claude Code для пропуска введения
4. Запрашивает ваш API ключ CursorAi
5. Настраивает переменные среды для перенаправления API вызовов на серверы Cursor Ai

## Ручная конфигурация

Если вы предпочитаете настроить вручную, установите эти переменные среды:

```bash
export ANTHROPIC_BASE_URL=https://api.cursorai.art/anthropic/
export ANTHROPIC_API_KEY=your_CursorAi_api_key_here
```

## Поддержка

По вопросам или проблемам посетите [Открытую платформу Cursor Ai](https://api.cursorai.art/register?aff=xoXg) или ознакомьтесь с оригинальной документацией Claude Code. 