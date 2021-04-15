---
title: Como aumentar a memória Swap no Debian 10
slug: como-aumentar-memoria-swap-debian
tags: linux, debian
category: Linux
excerpt: O espaço de troca (swap) no Linux é usado quando a quantidade de memória RAM está cheia.
created: 2021-04-15
image: ./images/pexels-kevin-ku-577585.jpg
image_caption: Como aumentar a memória Swap no Debian 10
author: luizeof
---

O espaço de troca (swap) no Linux é usado quando a quantidade de memória física (RAM) está cheia.

Se o sistema precisar de mais recursos de memória e a RAM estiver cheia, as páginas inativas na memória são movidas para o swap e assim o sistema não trava.

Embora o espaço de troca possa ajudar máquinas com uma pequena quantidade de RAM, ele não deve ser considerado um substituto para mais RAM.

O espaço de troca está localizado nos discos rígidos, que têm um tempo de acesso mais lento do que a memória física, porém em VPS com SSD vocÊ pode aproveitar muito bem o Swap.

O espaço de troca pode ser uma partição de troca dedicada (recomendado), um arquivo de troca ou uma combinação de partições de troca e arquivos de troca.

> Antigamente a quantidade recomendada de espaço de troca aumentava linearmente com a quantidade de RAM no sistema.

O espaço de troca _(swap)_ pode ser designado no momento da instalação ou em qualquer outro momento, porém recomendamos determinar a troca do sistema usando a tabela a seguir:

| Quantidade de RAM no sistema | Quantidade Recomendada de Swap |
| ---------------------------- | ------------------------------ |
| 4GB de RAM ou menos          | mínimo de 2GB de swap          |
| 4GB até 16GB of RAM          | mínimo de 4GB de swap          |
| 16GB até 64GB of RAM         | mínimo de 8GB de swap          |
| 64GB até 256GB of RAM        | mínimo de 16GB de swap         |
| 256GB até 512GB of RAM       | mínimo de 32GB de swap         |


## Como configurar o Swap no Debian

Antes de começar a visualizar os Swaps ativos, você pode