---
date: '2026-03-05T11:47:38+01:00'
draft: true
title: 'Separación de pistas de audio con SAM Audio'
tags:
    - 'Audio'
    - 'IA'
    - 'Producción musical'
---


SAM Audio es una IA de Facebook que puede separar en varias pistas cualquier tipo de sonido. Puede ser una canción, un video,...

Los audios se pueden separar proporcionando un texto con la descripción de cada pista que quieras aislar, seleccionando en un video la fuente de sonido (Personas, instrumentos,...) y más (puedes ver el artículo de Meta [aquí](https://ai.meta.com/research/samaudio/)).

{{< github repo="facebookresearch/SAM-Audio" >}}

{{< youtubeLite id="gPj_cQL_wvg" label="Blowfish-tools demo" >}}

# ¿Cómo usarlo?

En el modelo de Huggingface se puede utilizar a través de los spaces vinculados al modelo.

{{< huggingface model="facebook/sam-audio-large" >}}

## Referencia

Trabajo original de Meta AI (Shi et al., 2025).

Shi, B., Tjandra, A., Hoffman, J., et al. (2025). **SAM Audio: Segment Anything in Audio**. arXiv. https://arxiv.org/abs/2512.18099