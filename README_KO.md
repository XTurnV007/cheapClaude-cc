# cheapClaude CC

[中文](README.md) | [English](README_EN.md) | [日本語](README_JA.md) | **한국어** | [Français](README_FR.md) | [Deutsch](README_DE.md) | [Español](README_ES.md) | [Русский](README_RU.md)

더 저렴한 Claude 모델(claude-opus-4-20250514)을 사용하여 Claude Code를 구동합니다.

[claude-opus-4-20250514 성능 매개변수 종합 연구](https://www.anthropic.com/claude/opus)

## 빠른 설치

1. CursorAI 오픈 플랫폼에서 API Key를 신청하세요.

방문하기: [CursorAI 오픈 플랫폼](https://api.cursorai.art/register?aff=xoXg/)

우측 상단 콘솔 -> API 토큰 -> 토큰 추가 -> 아래로 스크롤 -> 그룹 설정에서 토큰을 **순AZ** 그룹으로 설정

2. 빠른 설치 - API Key 입력을 요청하며, 마지막에 Enter를 눌러주세요.

```shell
bash -c "$(curl -fsSL https://raw.githubusercontent.com/XTurnV007/cheapClaude-cc/refs/heads/main/install.sh)"
```

3. 저렴한 비용으로 Claude Code 사용을 시작하세요.

```shell
claude
```

## 기능

- **비용 효율적**: Anthropic API 대신 Cursor Ai의 경쟁력 있는 가격 사용
- **간편한 설정**: 자동 구성이 포함된 원클릭 설치
- **원활한 통합**: 기존 Claude Code 워크플로우와 호환
- **최신 모델**: Cursor Ai의 claude-opus-4-20250514 모델로 구동

## 설치 프로그램의 작업

설치 스크립트는 자동으로 다음을 수행합니다:
1. Node.js(v18+)를 확인하고 필요시 설치
2. npm을 통해 Claude Code를 전역적으로 설치
3. 온보딩을 건너뛰도록 Claude Code 구성
4. CursorAi API 키 입력 요청
5. API 호출을 Cursor Ai 서버로 리디렉션하는 환경 변수 설정

## 수동 구성

수동으로 구성하려면 다음 환경 변수를 설정하세요:

```bash
export ANTHROPIC_BASE_URL=https://api.cursorai.art/anthropic/
export ANTHROPIC_API_KEY=your_CursorAi_api_key_here
```

## 지원

문제나 질문이 있으시면 [Cursor Ai Open Platform](https://api.cursorai.art/register?aff=xoXg)을 방문하거나 원본 Claude Code 문서를 확인하세요. 