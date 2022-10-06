;
; File generated by cc65 v 2.19 - Git 65ce036
;
	.fopt		compiler,"cc65 v 2.19 - Git 65ce036"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	off
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.forceimport	__STARTUP__
	.import		_pal_bg
	.import		_pal_spr
	.import		_pal_col
	.import		_pal_bright
	.import		_ppu_wait_nmi
	.import		_ppu_wait_frame
	.import		_ppu_off
	.import		_ppu_on_all
	.import		_oam_clear
	.import		_oam_meta_spr
	.import		_music_play
	.import		_pad_poll
	.import		_pad_trigger
	.import		_bank_spr
	.import		_set_vram_update
	.import		_vram_adr
	.import		_vram_put
	.import		_vram_unrle
	.import		_memcpy
	.import		_set_vram_buffer
	.import		_set_music_speed
	.import		_check_collision
	.export		_beep
	.export		_pad1
	.export		_pad1_new
	.export		_collision
	.export		_collision_L
	.export		_collision_R
	.export		_collision_U
	.export		_collision_D
	.export		_which_bg
	.export		_p_maps
	.export		_coordinates
	.export		_temp1
	.export		_temp2
	.export		_temp3
	.export		_temp4
	.export		_temp_x
	.export		_temp_y
	.export		_song
	.export		_c_map
	.export		_beeoop
	.export		_All_Collision_Maps
	.export		_sprPlayer
	.export		_sprGhost
	.export		_draw_bg
	.export		_draw_sprites
	.export		_movement
	.export		_bg_collision
	.export		_pad2
	.export		_GoodGuy1
	.export		_BadGuy1
	.export		_collided
	.export		_palTitle
	.export		_show_title
	.export		_fade_out
	.export		_fade_in
	.export		_test_collision
	.export		_main

.segment	"DATA"

_GoodGuy1:
	.byte	$80
	.byte	$40
	.byte	$0F
	.byte	$0F
_BadGuy1:
	.byte	$80
	.byte	$A8
	.byte	$0F
	.byte	$0F
_collided:
	.word	$0000

.segment	"RODATA"

_beep:
	.byte	$02
	.byte	$00
	.byte	$02
	.byte	$81
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$00
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$00
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$04
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$00
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$00
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$06
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$03
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$07
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$08
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$03
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$07
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$08
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$00
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$03
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$08
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$00
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$03
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$08
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$07
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$03
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$08
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$07
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$03
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$08
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$00
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$03
	.byte	$40
	.byte	$41
	.byte	$00
	.byte	$02
	.byte	$08
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$00
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$03
	.byte	$42
	.byte	$43
	.byte	$00
	.byte	$02
	.byte	$FE
	.byte	$00
	.byte	$02
	.byte	$2D
	.byte	$30
	.byte	$32
	.byte	$25
	.byte	$33
	.byte	$33
	.byte	$00
	.byte	$00
	.byte	$33
	.byte	$34
	.byte	$21
	.byte	$32
	.byte	$34
	.byte	$00
	.byte	$02
	.byte	$D3
	.byte	$04
	.byte	$15
	.byte	$00
	.byte	$44
	.byte	$15
	.byte	$C1
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$11
	.byte	$00
	.byte	$04
	.byte	$45
	.byte	$DD
	.byte	$00
	.byte	$02
	.byte	$02
	.byte	$01
	.byte	$00
	.byte	$04
	.byte	$05
	.byte	$0D
	.byte	$00
	.byte	$02
	.byte	$0B
	.byte	$A0
	.byte	$02
	.byte	$02
	.byte	$00
	.byte	$02
	.byte	$11
	.byte	$00
	.byte	$02
	.byte	$00
_beeoop:
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$02
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$00
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
	.byte	$01
_All_Collision_Maps:
	.addr	_beeoop
_sprPlayer:
	.byte	$00
	.byte	$FF
	.byte	$49
	.byte	$00
	.byte	$08
	.byte	$FF
	.byte	$4A
	.byte	$00
	.byte	$00
	.byte	$07
	.byte	$4B
	.byte	$00
	.byte	$08
	.byte	$07
	.byte	$4C
	.byte	$00
	.byte	$80
_sprGhost:
	.byte	$00
	.byte	$FF
	.byte	$49
	.byte	$00
	.byte	$08
	.byte	$FF
	.byte	$4A
	.byte	$00
	.byte	$00
	.byte	$07
	.byte	$4B
	.byte	$00
	.byte	$08
	.byte	$07
	.byte	$4C
	.byte	$00
	.byte	$80
_palTitle:
	.byte	$0F
	.byte	$03
	.byte	$15
	.byte	$30
	.byte	$0F
	.byte	$01
	.byte	$21
	.byte	$31
	.byte	$0F
	.byte	$06
	.byte	$30
	.byte	$26
	.byte	$0F
	.byte	$09
	.byte	$19
	.byte	$29

.segment	"BSS"

_pad1:
	.res	1,$00
_pad1_new:
	.res	1,$00
_collision:
	.res	1,$00
_collision_L:
	.res	1,$00
_collision_R:
	.res	1,$00
_collision_U:
	.res	1,$00
_collision_D:
	.res	1,$00
_which_bg:
	.res	1,$00
_p_maps:
	.res	2,$00
_coordinates:
	.res	1,$00
_temp1:
	.res	1,$00
_temp2:
	.res	1,$00
_temp3:
	.res	1,$00
_temp4:
	.res	1,$00
_temp_x:
	.res	1,$00
_temp_y:
	.res	1,$00
_song:
	.res	1,$00
_c_map:
	.res	240,$00
.segment	"ZEROPAGE"
_pad2:
	.res	1,$00

; ---------------------------------------------------------------
; void __near__ draw_bg (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_bg: near

.segment	"CODE"

;
; ppu_off(); // screen off
;
	jsr     _ppu_off
;
; p_maps = All_Collision_Maps[which_bg];
;
	ldx     #$00
	lda     _which_bg
	asl     a
	bcc     L0019
	inx
	clc
L0019:	adc     #<(_All_Collision_Maps)
	sta     ptr1
	txa
	adc     #>(_All_Collision_Maps)
	sta     ptr1+1
	ldy     #$01
	lda     (ptr1),y
	sta     _p_maps+1
	dey
	lda     (ptr1),y
	sta     _p_maps
;
; memcpy (c_map, p_maps, 240);
;
	lda     #<(_c_map)
	ldx     #>(_c_map)
	jsr     pushax
	lda     _p_maps
	ldx     _p_maps+1
	jsr     pushax
	ldx     #$00
	lda     #$F0
	jsr     _memcpy
;
; vram_adr(NAMETABLE_A);
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; for(temp_y = 0; temp_y < 15; ++temp_y){
;
	lda     #$00
	sta     _temp_y
L001A:	lda     _temp_y
	cmp     #$0F
	bcs     L0003
;
; for(temp_x = 0; temp_x < 16; ++temp_x){
;
	lda     #$00
	sta     _temp_x
L001B:	lda     _temp_x
	cmp     #$10
	bcs     L001E
;
; temp1 = (temp_y << 4) + temp_x;
;
	lda     _temp_y
	asl     a
	asl     a
	asl     a
	asl     a
	clc
	adc     _temp_x
	sta     _temp1
;
; if(c_map[temp1]){
;
	ldy     _temp1
	lda     _c_map,y
	beq     L001D
;
; vram_put(0x10); // wall
;
	lda     #$10
	jsr     _vram_put
;
; vram_put(0x10);
;
	lda     #$10
;
; else{
;
	jmp     L0017
;
; vram_put(0); // blank
;
L001D:	jsr     _vram_put
;
; vram_put(0);
;
	lda     #$00
L0017:	jsr     _vram_put
;
; for(temp_x = 0; temp_x < 16; ++temp_x){
;
	inc     _temp_x
	jmp     L001B
;
; for(temp_x = 0; temp_x < 16; ++temp_x){
;
L001E:	lda     #$00
	sta     _temp_x
L001F:	lda     _temp_x
	cmp     #$10
	bcs     L0022
;
; temp1 = (temp_y << 4) + temp_x;
;
	lda     _temp_y
	asl     a
	asl     a
	asl     a
	asl     a
	clc
	adc     _temp_x
	sta     _temp1
;
; if(c_map[temp1]){
;
	ldy     _temp1
	lda     _c_map,y
	beq     L0021
;
; vram_put(0x10); // wall
;
	lda     #$10
	jsr     _vram_put
;
; vram_put(0x10);
;
	lda     #$10
;
; else{
;
	jmp     L0018
;
; vram_put(0); // blank
;
L0021:	jsr     _vram_put
;
; vram_put(0);
;
	lda     #$00
L0018:	jsr     _vram_put
;
; for(temp_x = 0; temp_x < 16; ++temp_x){
;
	inc     _temp_x
	jmp     L001F
;
; for(temp_y = 0; temp_y < 15; ++temp_y){
;
L0022:	inc     _temp_y
	jmp     L001A
;
; ppu_on_all(); // turn on screen
;
L0003:	jmp     _ppu_on_all

.endproc

; ---------------------------------------------------------------
; void __near__ draw_sprites (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_draw_sprites: near

.segment	"CODE"

;
; oam_clear();
;
	jsr     _oam_clear
;
; oam_meta_spr(GoodGuy1.x, GoodGuy1.y, sprPlayer);
;
	jsr     decsp2
	lda     _GoodGuy1
	ldy     #$01
	sta     (sp),y
	lda     _GoodGuy1+1
	dey
	sta     (sp),y
	lda     #<(_sprPlayer)
	ldx     #>(_sprPlayer)
	jsr     _oam_meta_spr
;
; oam_meta_spr(BadGuy1.x, BadGuy1.y, sprGhost);
;
	jsr     decsp2
	lda     _BadGuy1
	ldy     #$01
	sta     (sp),y
	lda     _BadGuy1+1
	dey
	sta     (sp),y
	lda     #<(_sprGhost)
	ldx     #>(_sprGhost)
	jmp     _oam_meta_spr

.endproc

; ---------------------------------------------------------------
; void __near__ movement (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_movement: near

.segment	"CODE"

;
; if(pad1 & PAD_LEFT){
;
	lda     _pad1
	and     #$02
	beq     L000E
;
; GoodGuy1.x -= 1;
;
	dec     _GoodGuy1
;
; else if (pad1 & PAD_RIGHT){
;
	jmp     L0004
L000E:	lda     _pad1
	and     #$01
	beq     L0004
;
; GoodGuy1.x += 1;
;
	inc     _GoodGuy1
;
; bg_collision((char *)&GoodGuy1);
;
L0004:	lda     #<(_GoodGuy1)
	ldx     #>(_GoodGuy1)
	jsr     _bg_collision
;
; if(collision_R) GoodGuy1.x -= 1;
;
	lda     _collision_R
	beq     L0005
	dec     _GoodGuy1
;
; if(collision_L) GoodGuy1.x += 1;
;
L0005:	lda     _collision_L
	beq     L0006
	inc     _GoodGuy1
;
; if(pad1 & PAD_UP){
;
L0006:	lda     _pad1
	and     #$08
	beq     L000F
;
; GoodGuy1.y -= 1;
;
	dec     _GoodGuy1+1
;
; else if (pad1 & PAD_DOWN){
;
	jmp     L0009
L000F:	lda     _pad1
	and     #$04
	beq     L0009
;
; GoodGuy1.y += 1;
;
	inc     _GoodGuy1+1
;
; bg_collision((char *)&GoodGuy1);
;
L0009:	lda     #<(_GoodGuy1)
	ldx     #>(_GoodGuy1)
	jsr     _bg_collision
;
; if(collision_D) GoodGuy1.y -= 1;
;
	lda     _collision_D
	beq     L000A
	dec     _GoodGuy1+1
;
; if(collision_U) GoodGuy1.y += 1;
;
L000A:	lda     _collision_U
	beq     L000B
	inc     _GoodGuy1+1
;
; } 
;
L000B:	rts

.endproc

; ---------------------------------------------------------------
; void __near__ bg_collision (char *object)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_bg_collision: near

.segment	"CODE"

;
; void bg_collision(char * object){
;
	jsr     pushax
;
; collision_L = 0;
;
	lda     #$00
	sta     _collision_L
;
; collision_R = 0;
;
	sta     _collision_R
;
; collision_U = 0;
;
	sta     _collision_U
;
; collision_D = 0;
;
	sta     _collision_D
;
; temp1 = object[0]; // left side
;
	ldy     #$01
	lda     (sp),y
	sta     ptr1+1
	dey
	lda     (sp),y
	sta     ptr1
	lda     (ptr1),y
	sta     _temp1
;
; temp2 = temp1 + object[2]; // right side
;
	iny
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$02
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	clc
	adc     _temp1
	sta     _temp2
;
; temp3 = object[1]; // top side
;
	dey
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	iny
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	sta     _temp3
;
; temp4 = temp3 + object[3]; // bottom side
;
	lda     (sp),y
	tax
	dey
	lda     (sp),y
	ldy     #$03
	sta     ptr1
	stx     ptr1+1
	lda     (ptr1),y
	clc
	adc     _temp3
	sta     _temp4
;
; if(temp3 >= 0xf0) return;
;
	lda     _temp3
	cmp     #$F0
	jcs     L000D
;
; coordinates = (temp1 >> 4) + (temp3 & 0xf0); // upper left
;
	lda     _temp1
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     ptr1
	lda     _temp3
	and     #$F0
	clc
	adc     ptr1
	sta     _coordinates
;
; if(c_map[coordinates]){ // find a corner in the collision map
;
	ldy     _coordinates
	lda     _c_map,y
	beq     L0015
;
; ++collision_L;
;
	inc     _collision_L
;
; ++collision_U;
;
	inc     _collision_U
;
; coordinates = (temp2 >> 4) + (temp3 & 0xf0); // upper right
;
L0015:	lda     _temp2
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     ptr1
	lda     _temp3
	and     #$F0
	clc
	adc     ptr1
	sta     _coordinates
;
; if(c_map[coordinates]){
;
	ldy     _coordinates
	lda     _c_map,y
	beq     L0016
;
; ++collision_R;
;
	inc     _collision_R
;
; ++collision_U;
;
	inc     _collision_U
;
; if(temp4 >= 0xf0) return;
;
L0016:	lda     _temp4
	cmp     #$F0
	bcs     L000D
;
; coordinates = (temp1 >> 4) + (temp4 & 0xf0); // bottom left
;
	lda     _temp1
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     ptr1
	lda     _temp4
	and     #$F0
	clc
	adc     ptr1
	sta     _coordinates
;
; if(c_map[coordinates]){
;
	ldy     _coordinates
	lda     _c_map,y
	beq     L0017
;
; ++collision_L;
;
	inc     _collision_L
;
; ++collision_D;
;
	inc     _collision_D
;
; coordinates = (temp2 >> 4) + (temp4 & 0xf0); // bottom right
;
L0017:	lda     _temp2
	lsr     a
	lsr     a
	lsr     a
	lsr     a
	sta     ptr1
	lda     _temp4
	and     #$F0
	clc
	adc     ptr1
	sta     _coordinates
;
; if(c_map[coordinates]){
;
	ldy     _coordinates
	lda     _c_map,y
	beq     L000D
;
; ++collision_R;
;
	inc     _collision_R
;
; ++collision_D;
;
	inc     _collision_D
;
; }
;
L000D:	jmp     incsp2

.endproc

; ---------------------------------------------------------------
; void __near__ show_title (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_show_title: near

.segment	"CODE"

;
; ppu_off();
;
	jsr     _ppu_off
;
; vram_adr(NAMETABLE_A);
;
	ldx     #$20
	lda     #$00
	jsr     _vram_adr
;
; vram_unrle(beep);
;
	lda     #<(_beep)
	ldx     #>(_beep)
	jsr     _vram_unrle
;
; ppu_on_all();
;
	jsr     _ppu_on_all
;
; ppu_wait_frame();
;
L0002:	jsr     _ppu_wait_frame
;
; if (pad_trigger(0)&PAD_START) 
;
	lda     #$00
	jsr     _pad_trigger
	and     #$10
	beq     L0002
;
; break;
;
	rts

.endproc

; ---------------------------------------------------------------
; void __near__ fade_out (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_fade_out: near

.segment	"CODE"

;
; for (vb=4; vb!=0; vb--) {
;
	jsr     decsp1
	lda     #$04
	ldy     #$00
L0006:	sta     (sp),y
	lda     (sp),y
	beq     L0008
;
; pal_bright(vb);
;
	jsr     _pal_bright
;
; ppu_wait_frame();
;
	jsr     _ppu_wait_frame
;
; ppu_wait_frame();
;
	jsr     _ppu_wait_frame
;
; ppu_wait_frame();
;
	jsr     _ppu_wait_frame
;
; ppu_wait_frame();
;
	jsr     _ppu_wait_frame
;
; for (vb=4; vb!=0; vb--) {
;
	ldy     #$00
	lda     (sp),y
	sec
	sbc     #$01
	jmp     L0006
;
; pal_bright(0);
;
L0008:	jsr     _pal_bright
;
; set_vram_update(NULL);
;
	ldx     #$00
	txa
	jsr     _set_vram_update
;
; }
;
	jmp     incsp1

.endproc

; ---------------------------------------------------------------
; void __near__ fade_in (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_fade_in: near

.segment	"CODE"

;
; for(vb=0; vb<=4; vb++) {
;
	jsr     decsp1
	lda     #$00
	tay
L0006:	sta     (sp),y
	cmp     #$05
	bcs     L0003
;
; pal_bright(vb);
;
	lda     (sp),y
	jsr     _pal_bright
;
; ppu_wait_frame();
;
	jsr     _ppu_wait_frame
;
; ppu_wait_frame();
;
	jsr     _ppu_wait_frame
;
; ppu_wait_frame();
;
	jsr     _ppu_wait_frame
;
; ppu_wait_frame();
;
	jsr     _ppu_wait_frame
;
; for(vb=0; vb<=4; vb++) {
;
	ldy     #$00
	clc
	lda     #$01
	adc     (sp),y
	jmp     L0006
;
; }
;
L0003:	jmp     incsp1

.endproc

; ---------------------------------------------------------------
; void __near__ test_collision (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_test_collision: near

.segment	"CODE"

;
; collision = check_collision(&GoodGuy1, &BadGuy1);
;
	lda     #<(_GoodGuy1)
	ldx     #>(_GoodGuy1)
	jsr     pushax
	lda     #<(_BadGuy1)
	ldx     #>(_BadGuy1)
	jsr     _check_collision
	sta     _collision
;
; if (collision){
;
	lda     _collision
	beq     L0002
;
; pal_col(0,0x12);
;
	lda     #$00
	jsr     pusha
	lda     #$12
;
; else{
;
	jmp     _pal_col
;
; pal_col(0,0x0f);
;
L0002:	jsr     pusha
	lda     #$0F
	jmp     _pal_col

.endproc

; ---------------------------------------------------------------
; void __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

.segment	"CODE"

;
; ppu_off(); // screen off
;
	jsr     _ppu_off
;
; pal_bg(palTitle);
;
	lda     #<(_palTitle)
	ldx     #>(_palTitle)
	jsr     _pal_bg
;
; pal_spr(palTitle);
;
	lda     #<(_palTitle)
	ldx     #>(_palTitle)
	jsr     _pal_spr
;
; bank_spr(1);
;
	lda     #$01
	jsr     _bank_spr
;
; set_vram_buffer();
;
	jsr     _set_vram_buffer
;
; song = 0;
;
	lda     #$00
	sta     _song
;
; music_play(song);
;
	jsr     _music_play
;
; ppu_on_all(); 
;
	jsr     _ppu_on_all
;
; show_title();
;
	jsr     _show_title
;
; draw_bg();
;
	jsr     _draw_bg
;
; music_play(song+1);
;
	lda     _song
	clc
	adc     #$01
	jsr     _music_play
;
; ppu_wait_nmi(); // wait till beginning of the frame
;
L0003:	jsr     _ppu_wait_nmi
;
; set_music_speed(8);
;
	lda     #$08
	jsr     _set_music_speed
;
; oam_clear();
;
	jsr     _oam_clear
;
; pad1 = pad_poll(0);
;
	lda     #$00
	jsr     _pad_poll
	sta     _pad1
;
; draw_sprites();
;
	jsr     _draw_sprites
;
; movement();
;
	jsr     _movement
;
; test_collision();
;
	jsr     _test_collision
;
; while (1){
;
	jmp     L0003

.endproc

