/	o/$(MODE)/tool/build/lz4toasm.com -o o/$(MODE)/libc/str/EastAsianWidth.s -s kEastAsianWidth o/$(MODE)/libc/str/EastAsianWidth.bin.lz4
.include "libc/macros.inc"

	.rodata
	.align	4
kEastAsianWidthBits:
	.long	32768 * 8
	.endobj	kEastAsianWidthBits,globl,hidden
	.previous

	.initbss 500,_init_kEastAsianWidth
kEastAsianWidth:
	.zero	32768
	.endobj	kEastAsianWidth,globl,hidden
	.previous

	.init.start 500,_init_kEastAsianWidth
	push	%rsi
	mov	$500,%edx
	call	lz4cpy
	mov	%rax,%rdi
	pop	%rsi
	add	$504,%rsi
	.init.end 500,_init_kEastAsianWidth

	.initro 500,_init_kEastAsianWidth
kEastAsianWidthLz4:
	.byte	0x1f,0x00,0x01,0x00,0xff,0xff,0x0e,0x17	#▼ ☺ λλ♫↨
	.byte	0xff,0x01,0x00,0x0f,0x30,0x01,0xff,0x12	#λ☺ ☼0☺λ↕
	.byte	0xaf,0x88,0x99,0xf0,0xad,0xae,0xfb,0x2b	#»êÖ≡¡«√+
	.byte	0x00,0x81,0xfb,0x13,0x01,0xf6,0x3f,0x0c	# ü√‼☺÷?♀
	.byte	0x00,0x06,0x1a,0x00,0x04,0x2f,0x1e,0x09	# ♠→ ♦/▲○
	.byte	0x5c,0x00,0x2d,0x43,0x60,0x00,0x00,0x30	#\ -C`  0
	.byte	0xa9,0x02,0x10,0x0f,0x06,0x00,0xf3,0x0d	#⌐☻►☼♠ ≤♪
	.byte	0x80,0x00,0x00,0x08,0x00,0x02,0x0c,0x00	#Ç  ◘ ☻♀ 
	.byte	0x60,0x30,0x40,0x10,0x00,0x00,0x04,0x2c	#`0@►  ♦,
	.byte	0x24,0x20,0x0c,0x00,0x00,0x00,0x01,0x00	#$ ♀   ☺ 
	.byte	0x00,0x00,0x50,0xb8,0x33,0x00,0x10,0xe0	#  P╕3 ►α
	.byte	0x11,0x00,0x1f,0x80,0x00,0x01,0x58,0x12	#◄ ▼Ç ☺X↕
	.byte	0x18,0x07,0x00,0x1f,0x21,0xb0,0x03,0x55	#↑• ▼!░♥U
	.byte	0x16,0xfb,0xb2,0x03,0x3f,0x0f,0x00,0xff	#▬√▓♥?☼ λ
	.byte	0x01,0x00,0x06,0x11,0x3f,0x35,0x01,0x03	#☺ ♠◄?5☺♥
	.byte	0x0d,0x00,0x4e,0x7f,0xfe,0xff,0xff,0x0b	#♪ N⌂■λλ♂
	.byte	0x00,0x41,0xff,0xff,0xff,0xe0,0x06,0x00	# Aλλλα♠ 
	.byte	0x07,0x13,0x00,0x11,0x7f,0x06,0x00,0x17	#•‼ ◄⌂♠ ↨
	.byte	0x07,0x5e,0x00,0x02,0x12,0x00,0x2f,0x00	#•^ ☻↕ / 
	.byte	0xff,0x01,0x00,0xff,0xff,0xff,0x5d,0x0e	#λ☺ λλλ]♫
	.byte	0xa0,0x07,0x0f,0x01,0x00,0xff,0xff,0xff	#á•☼☺ λλλ
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xbe	#λλλλλλλ╛
	.byte	0x13,0x1f,0x67,0x0e,0x0f,0x0c,0x13,0x83	#‼▼g♫☼♀‼â
	.byte	0x1f,0x1f,0x60,0x13,0x3d,0x0f,0x63,0x06	#▼▼`‼=☼c♠
	.byte	0xff,0xff,0xff,0xff,0xff,0x66,0x2f,0x0f	#λλλλλf/☼
	.byte	0x00,0x01,0x00,0xff,0xff,0xf9,0x04,0xb0	# ☺ λλ∙♦░
	.byte	0x1a,0x2f,0xd1,0xe0,0x00,0x1d,0xff,0x10	#→/╤α ↔λ►
	.byte	0x0f,0xa8,0x15,0x21,0x0f,0xa2,0x00,0x50	#☼¿§!☼ó P
	.byte	0x12,0x03,0xa6,0x00,0x3f,0xf7,0xff,0x7f	#↕♥ª ?≈λ⌂
	.byte	0xd9,0x04,0x00,0x08,0xcd,0x19,0x1b,0x01	#┘♦ ◘═↓←☺
	.byte	0x1c,0x00,0x2f,0x7f,0x00,0x01,0x00,0xff	#∟ /⌂ ☺ λ
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff	#λλλλλλλλ
	.byte	0xff,0xff,0xff,0xff,0xf8,0x1f,0x0f,0x80	#λλλλ°▼☼Ç
	.byte	0x18,0xff,0xff,0xf1,0x0f,0x00,0x03,0x4c	#↑λλ±☼ ♥L
	.byte	0x1f,0x07,0x04,0x08,0xff,0xff,0xff,0xff	#▼•♦◘λλλλ
	.byte	0x92,0x0f,0xc5,0x04,0x10,0x03,0x27,0x16	#Æ☼┼♦►♥'▬
	.byte	0x4f,0x07,0x00,0xf0,0x00,0x6b,0x1b,0x1f	#O• ≡ k←▼
	.byte	0x0f,0x04,0x10,0xff,0xff,0xff,0xff,0xff	#☼♦►λλλλλ
	.byte	0xff,0xff,0x94,0x1f,0x10,0x19,0x00,0x05	#λλö▼►↓ ♣
	.byte	0x0f,0x22,0x39,0x05,0x29,0x40,0xfe,0xd5	#☼.9♣)@■╒
	.byte	0x0c,0x12,0x07,0x14,0x08,0x6f,0x0f,0xff	#♀↕•¶◘o☼λ
	.byte	0x01,0x03,0x00,0x3f,0x60,0x08,0x04,0x34	#☺♥ ?`◘♦4
	.byte	0x01,0xe0,0xbf,0x10,0x08,0x15,0xdf,0x36	#☺α┐►◘§▀6
	.byte	0x38,0x10,0x87,0x08,0x00,0x15,0x11,0x64	#8►ç◘ §◄d
	.byte	0x08,0x1f,0xfd,0x40,0x08,0x03,0x15,0x9f	#◘▼²@◘♥§ƒ
	.byte	0xad,0x38,0x11,0x78,0x4d,0x1f,0x10,0x04	#¡8◄xM▼►♦
	.byte	0xf3,0x39,0x07,0xb4,0x00,0x1c,0xf8,0x6a	#≤9•┤ ∟°j
	.byte	0x1f,0x05,0xde,0x38,0x6f,0x10,0x27,0x00	#▼♣▐8o►' 
	.byte	0x00,0x18,0xf0,0x81,0x0d,0x0a,0x0f,0x9e	# ↑≡ü♪◙☼€
	.byte	0x08,0x12,0x18,0xe0,0x8f,0x00,0x20,0x7b	#◘↕↑αÅ  {
	.byte	0xfc,0x06,0x00,0x20,0xe7,0xc7,0x05,0x00	#ⁿ♠  τ╟♣ 
	.byte	0x0f,0xe0,0x1f,0x01,0x5f,0x0f,0x07,0x07	#☼α▼☺_☼••
	.byte	0x00,0x3f,0xe0,0x20,0x9b,0x0f,0x01,0x00	# ?α ¢☼☺ 
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff	#λλλλλλλλ
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff	#λλλλλλλλ
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff	#λλλλλλλλ
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff	#λλλλλλλλ
	.byte	0x0b,0x1f,0x3f,0xfc,0x1f,0xff,0xff,0xff	#♂▼?ⁿ▼λλλ
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff	#λλλλλλλλ
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff	#λλλλλλλλ
	.byte	0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff	#λλλλλλλλ
	.byte	0xff,0xff,0xff,0xff,0xff,0x08,0x50,0xff	#λλλλλ◘Pλ
	.byte	0xff,0xff,0xff,0x3f,0x00,0x00,0x00,0x00
	.endobj	kEastAsianWidthLz4,globl,hidden
	.previous