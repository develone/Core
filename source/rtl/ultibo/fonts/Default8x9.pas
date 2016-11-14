{
Ultibo Default8x9 font unit.

Arch
====

 <All>

Boards
======

 <All>

Licence
=======

 LGPLv2.1 with static linking exception (See COPYING.modifiedLGPL.txt)

Credits
=======

 This font was originally from the file default8x9.psfu

}

{$mode delphi} {Default to Delphi compatible syntax}
{$H+}          {Default to AnsiString}
{$inline on}   {Allow use of Inline procedures}

unit Default8x9;

interface

uses GlobalConfig,GlobalConst,GlobalTypes,Platform,Font;

{==============================================================================}
{const}
 {Default8x9 specific constants}

{==============================================================================}
{type}
 {Default8x9 specific types}

{==============================================================================}
{var}
 {Default8x9 specific variables}

{==============================================================================}
{Initialization Functions}

{==============================================================================}
{==============================================================================}

implementation

{==============================================================================}
{==============================================================================}
var
 {Default8x9 specific variables}
 Default8x9Initialized:Boolean;

 Default8x9FontHeader:TFontHeader = (
  Width:8;
  Height:9;
  Count:256;
  Mode:FONT_MODE_PIXEL;
  Flags:FONT_FLAG_NONE;
  Mask:0;
  CodePage:CP_ACP;
  Name:('Default8x9');
  Description:('Default (8x9) Console Font')
  );

 Default8x9FontData:array[0..255,0..8] of Byte = (
   ($00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($7E, $81, $A5, $81, $BD, $99, $81, $7E, $00),
   ($7E, $FF, $DB, $FF, $C3, $E7, $FF, $7E, $00),
   ($6C, $FE, $FE, $FE, $7C, $38, $10, $00, $00),
   ($10, $38, $7C, $FE, $7C, $38, $10, $00, $00),
   ($38, $7C, $38, $FE, $FE, $7C, $38, $7C, $00),
   ($10, $10, $38, $7C, $FE, $7C, $38, $7C, $00),
   ($00, $00, $18, $3C, $3C, $18, $00, $00, $00),
   ($FF, $FF, $E7, $C3, $C3, $E7, $FF, $FF, $00),
   ($00, $3C, $66, $42, $42, $66, $3C, $00, $00),
   ($FF, $C3, $99, $BD, $BD, $99, $C3, $FF, $00),
   ($0F, $07, $0F, $7D, $CC, $CC, $CC, $78, $00),
   ($3C, $66, $66, $66, $3C, $18, $7E, $18, $00),
   ($3F, $33, $3F, $30, $30, $70, $F0, $E0, $00),
   ($7F, $63, $7F, $63, $63, $67, $E6, $C0, $00),
   ($99, $5A, $3C, $E7, $E7, $3C, $5A, $99, $00),
   ($80, $E0, $F8, $FE, $F8, $E0, $80, $00, $00),
   ($02, $0E, $3E, $FE, $3E, $0E, $02, $00, $00),
   ($18, $3C, $7E, $18, $18, $7E, $3C, $18, $00),
   ($66, $66, $66, $66, $66, $00, $66, $00, $00),
   ($7F, $DB, $DB, $7B, $1B, $1B, $1B, $00, $00),
   ($3E, $63, $38, $6C, $6C, $38, $CC, $78, $00),
   ($00, $00, $00, $00, $7E, $7E, $7E, $00, $00),
   ($18, $3C, $7E, $18, $7E, $3C, $18, $FF, $00),
   ($18, $3C, $7E, $18, $18, $18, $18, $00, $00),
   ($18, $18, $18, $18, $7E, $3C, $18, $00, $00),
   ($00, $18, $0C, $FE, $0C, $18, $00, $00, $00),
   ($00, $30, $60, $FE, $60, $30, $00, $00, $00),
   ($00, $00, $C0, $C0, $C0, $FE, $00, $00, $00),
   ($00, $24, $66, $FF, $66, $24, $00, $00, $00),
   ($00, $18, $3C, $7E, $FF, $FF, $00, $00, $00),
   ($00, $FF, $FF, $7E, $3C, $18, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00),
   ($30, $78, $78, $30, $30, $00, $30, $00, $00),
   ($6C, $6C, $6C, $00, $00, $00, $00, $00, $00),
   ($6C, $6C, $FE, $6C, $FE, $6C, $6C, $00, $00),
   ($30, $7C, $C0, $78, $0C, $F8, $30, $00, $00),
   ($00, $C6, $CC, $18, $30, $66, $C6, $00, $00),
   ($38, $6C, $38, $76, $DC, $CC, $76, $00, $00),
   ($60, $60, $C0, $00, $00, $00, $00, $00, $00),
   ($18, $30, $60, $60, $60, $30, $18, $00, $00),
   ($60, $30, $18, $18, $18, $30, $60, $00, $00),
   ($00, $66, $3C, $FF, $3C, $66, $00, $00, $00),
   ($00, $30, $30, $FC, $30, $30, $00, $00, $00),
   ($00, $00, $00, $00, $00, $30, $30, $60, $00),
   ($00, $00, $00, $FC, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $30, $30, $00, $00),
   ($06, $0C, $18, $30, $60, $C0, $80, $00, $00),
   ($7C, $C6, $CE, $DE, $F6, $E6, $7C, $00, $00),
   ($30, $70, $30, $30, $30, $30, $FC, $00, $00),
   ($78, $CC, $0C, $38, $60, $CC, $FC, $00, $00),
   ($78, $CC, $0C, $38, $0C, $CC, $78, $00, $00),
   ($1C, $3C, $6C, $CC, $FE, $0C, $1E, $00, $00),
   ($FC, $C0, $F8, $0C, $0C, $CC, $78, $00, $00),
   ($38, $60, $C0, $F8, $CC, $CC, $78, $00, $00),
   ($FC, $CC, $0C, $18, $30, $30, $30, $00, $00),
   ($78, $CC, $CC, $78, $CC, $CC, $78, $00, $00),
   ($78, $CC, $CC, $7C, $0C, $18, $70, $00, $00),
   ($00, $30, $30, $00, $00, $30, $30, $00, $00),
   ($00, $30, $30, $00, $00, $30, $30, $60, $00),
   ($18, $30, $60, $C0, $60, $30, $18, $00, $00),
   ($00, $00, $FC, $00, $00, $FC, $00, $00, $00),
   ($60, $30, $18, $0C, $18, $30, $60, $00, $00),
   ($78, $CC, $0C, $18, $30, $00, $30, $00, $00),
   ($7C, $C6, $DE, $DE, $DE, $C0, $78, $00, $00),
   ($30, $78, $CC, $CC, $FC, $CC, $CC, $00, $00),
   ($FC, $66, $66, $7C, $66, $66, $FC, $00, $00),
   ($3C, $66, $C0, $C0, $C0, $66, $3C, $00, $00),
   ($F8, $6C, $66, $66, $66, $6C, $F8, $00, $00),
   ($FE, $62, $68, $78, $68, $62, $FE, $00, $00),
   ($FE, $62, $68, $78, $68, $60, $F0, $00, $00),
   ($3C, $66, $C0, $C0, $CE, $66, $3E, $00, $00),
   ($CC, $CC, $CC, $FC, $CC, $CC, $CC, $00, $00),
   ($78, $30, $30, $30, $30, $30, $78, $00, $00),
   ($1E, $0C, $0C, $0C, $CC, $CC, $78, $00, $00),
   ($E6, $66, $6C, $78, $6C, $66, $E6, $00, $00),
   ($F0, $60, $60, $60, $62, $66, $FE, $00, $00),
   ($C6, $EE, $FE, $FE, $D6, $C6, $C6, $00, $00),
   ($C6, $E6, $F6, $DE, $CE, $C6, $C6, $00, $00),
   ($38, $6C, $C6, $C6, $C6, $6C, $38, $00, $00),
   ($FC, $66, $66, $7C, $60, $60, $F0, $00, $00),
   ($78, $CC, $CC, $CC, $DC, $78, $1C, $00, $00),
   ($FC, $66, $66, $7C, $6C, $66, $E6, $00, $00),
   ($78, $CC, $E0, $70, $1C, $CC, $78, $00, $00),
   ($FC, $B4, $30, $30, $30, $30, $78, $00, $00),
   ($CC, $CC, $CC, $CC, $CC, $CC, $FC, $00, $00),
   ($CC, $CC, $CC, $CC, $CC, $78, $30, $00, $00),
   ($C6, $C6, $C6, $D6, $FE, $EE, $C6, $00, $00),
   ($C6, $C6, $6C, $38, $38, $6C, $C6, $00, $00),
   ($CC, $CC, $CC, $78, $30, $30, $78, $00, $00),
   ($FE, $C6, $8C, $18, $32, $66, $FE, $00, $00),
   ($78, $60, $60, $60, $60, $60, $78, $00, $00),
   ($C0, $60, $30, $18, $0C, $06, $02, $00, $00),
   ($78, $18, $18, $18, $18, $18, $78, $00, $00),
   ($10, $38, $6C, $C6, $00, $00, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $FF, $00),
   ($30, $30, $18, $00, $00, $00, $00, $00, $00),
   ($00, $00, $78, $0C, $7C, $CC, $76, $00, $00),
   ($E0, $60, $60, $7C, $66, $66, $DC, $00, $00),
   ($00, $00, $78, $CC, $C0, $CC, $78, $00, $00),
   ($1C, $0C, $0C, $7C, $CC, $CC, $76, $00, $00),
   ($00, $00, $78, $CC, $FC, $C0, $78, $00, $00),
   ($38, $6C, $60, $F0, $60, $60, $F0, $00, $00),
   ($00, $00, $76, $CC, $CC, $7C, $0C, $F8, $00),
   ($E0, $60, $6C, $76, $66, $66, $E6, $00, $00),
   ($30, $00, $70, $30, $30, $30, $78, $00, $00),
   ($0C, $00, $0C, $0C, $0C, $CC, $CC, $78, $00),
   ($E0, $60, $66, $6C, $78, $6C, $E6, $00, $00),
   ($70, $30, $30, $30, $30, $30, $78, $00, $00),
   ($00, $00, $CC, $FE, $FE, $D6, $C6, $00, $00),
   ($00, $00, $F8, $CC, $CC, $CC, $CC, $00, $00),
   ($00, $00, $78, $CC, $CC, $CC, $78, $00, $00),
   ($00, $00, $DC, $66, $66, $7C, $60, $F0, $00),
   ($00, $00, $76, $CC, $CC, $7C, $0C, $1E, $00),
   ($00, $00, $DC, $76, $66, $60, $F0, $00, $00),
   ($00, $00, $7C, $C0, $78, $0C, $F8, $00, $00),
   ($10, $30, $7C, $30, $30, $34, $18, $00, $00),
   ($00, $00, $CC, $CC, $CC, $CC, $76, $00, $00),
   ($00, $00, $CC, $CC, $CC, $78, $30, $00, $00),
   ($00, $00, $C6, $D6, $FE, $FE, $6C, $00, $00),
   ($00, $00, $C6, $6C, $38, $6C, $C6, $00, $00),
   ($00, $00, $CC, $CC, $CC, $7C, $0C, $F8, $00),
   ($00, $00, $FC, $98, $30, $64, $FC, $00, $00),
   ($1C, $30, $30, $E0, $30, $30, $1C, $00, $00),
   ($18, $18, $18, $00, $18, $18, $18, $00, $00),
   ($E0, $30, $30, $1C, $30, $30, $E0, $00, $00),
   ($76, $DC, $00, $00, $00, $00, $00, $00, $00),
   ($00, $10, $38, $6C, $C6, $C6, $FE, $00, $00),
   ($78, $CC, $C0, $CC, $78, $18, $0C, $78, $00),
   ($00, $CC, $00, $CC, $CC, $CC, $7E, $00, $00),
   ($1C, $00, $78, $CC, $FC, $C0, $78, $00, $00),
   ($7E, $C3, $3C, $06, $3E, $66, $3F, $00, $00),
   ($CC, $00, $78, $0C, $7C, $CC, $7E, $00, $00),
   ($E0, $00, $78, $0C, $7C, $CC, $7E, $00, $00),
   ($30, $30, $78, $0C, $7C, $CC, $7E, $00, $00),
   ($00, $00, $78, $C0, $C0, $78, $0C, $38, $00),
   ($7E, $C3, $3C, $66, $7E, $60, $3C, $00, $00),
   ($CC, $00, $78, $CC, $FC, $C0, $78, $00, $00),
   ($E0, $00, $78, $CC, $FC, $C0, $78, $00, $00),
   ($CC, $00, $70, $30, $30, $30, $78, $00, $00),
   ($7C, $C6, $38, $18, $18, $18, $3C, $00, $00),
   ($E0, $00, $70, $30, $30, $30, $78, $00, $00),
   ($C6, $38, $6C, $C6, $FE, $C6, $C6, $00, $00),
   ($30, $30, $00, $78, $CC, $FC, $CC, $00, $00),
   ($1C, $00, $FC, $60, $78, $60, $FC, $00, $00),
   ($00, $00, $7F, $0C, $7F, $CC, $7F, $00, $00),
   ($3E, $6C, $CC, $FE, $CC, $CC, $CE, $00, $00),
   ($78, $CC, $00, $78, $CC, $CC, $78, $00, $00),
   ($00, $CC, $00, $78, $CC, $CC, $78, $00, $00),
   ($00, $E0, $00, $78, $CC, $CC, $78, $00, $00),
   ($78, $CC, $00, $CC, $CC, $CC, $7E, $00, $00),
   ($00, $E0, $00, $CC, $CC, $CC, $7E, $00, $00),
   ($00, $CC, $00, $CC, $CC, $7C, $0C, $F8, $00),
   ($C3, $18, $3C, $66, $66, $3C, $18, $00, $00),
   ($CC, $00, $CC, $CC, $CC, $CC, $78, $00, $00),
   ($18, $18, $7E, $C0, $C0, $7E, $18, $18, $00),
   ($38, $6C, $64, $F0, $60, $E6, $FC, $00, $00),
   ($CC, $CC, $78, $FC, $30, $FC, $30, $30, $00),
   ($F8, $CC, $CC, $FA, $C6, $CF, $C6, $C7, $00),
   ($0E, $1B, $18, $3C, $18, $18, $D8, $70, $00),
   ($1C, $00, $78, $0C, $7C, $CC, $7E, $00, $00),
   ($38, $00, $70, $30, $30, $30, $78, $00, $00),
   ($00, $1C, $00, $78, $CC, $CC, $78, $00, $00),
   ($00, $1C, $00, $CC, $CC, $CC, $7E, $00, $00),
   ($00, $F8, $00, $F8, $CC, $CC, $CC, $00, $00),
   ($FC, $00, $CC, $EC, $FC, $DC, $CC, $00, $00),
   ($3C, $6C, $6C, $3E, $00, $7E, $00, $00, $00),
   ($38, $6C, $6C, $38, $00, $7C, $00, $00, $00),
   ($30, $00, $30, $60, $C0, $CC, $78, $00, $00),
   ($00, $00, $00, $FC, $C0, $C0, $00, $00, $00),
   ($00, $00, $00, $FC, $0C, $0C, $00, $00, $00),
   ($C3, $C6, $CC, $DE, $33, $66, $CC, $0F, $00),
   ($C3, $C6, $CC, $DB, $37, $6F, $CF, $03, $00),
   ($18, $18, $00, $18, $18, $18, $18, $00, $00),
   ($00, $33, $66, $CC, $66, $33, $00, $00, $00),
   ($00, $CC, $66, $33, $66, $CC, $00, $00, $00),
   ($22, $88, $22, $88, $22, $88, $22, $88, $88),
   ($55, $AA, $55, $AA, $55, $AA, $55, $AA, $AA),
   ($DB, $77, $DB, $EE, $DB, $77, $DB, $EE, $EE),
   ($18, $18, $18, $18, $18, $18, $18, $18, $18),
   ($18, $18, $18, $18, $F8, $18, $18, $18, $18),
   ($18, $18, $F8, $18, $F8, $18, $18, $18, $18),
   ($36, $36, $36, $36, $F6, $36, $36, $36, $36),
   ($00, $00, $00, $00, $FE, $36, $36, $36, $36),
   ($00, $00, $F8, $18, $F8, $18, $18, $18, $18),
   ($36, $36, $F6, $06, $F6, $36, $36, $36, $36),
   ($36, $36, $36, $36, $36, $36, $36, $36, $36),
   ($00, $00, $FE, $06, $F6, $36, $36, $36, $36),
   ($36, $36, $F6, $06, $FE, $00, $00, $00, $00),
   ($36, $36, $36, $36, $FE, $00, $00, $00, $00),
   ($18, $18, $F8, $18, $F8, $00, $00, $00, $00),
   ($00, $00, $00, $00, $F8, $18, $18, $18, $18),
   ($18, $18, $18, $18, $1F, $00, $00, $00, $00),
   ($18, $18, $18, $18, $FF, $00, $00, $00, $00),
   ($00, $00, $00, $00, $FF, $18, $18, $18, $18),
   ($18, $18, $18, $18, $1F, $18, $18, $18, $18),
   ($00, $00, $00, $00, $FF, $00, $00, $00, $00),
   ($18, $18, $18, $18, $FF, $18, $18, $18, $18),
   ($18, $18, $1F, $18, $1F, $18, $18, $18, $18),
   ($36, $36, $36, $36, $37, $36, $36, $36, $36),
   ($36, $36, $37, $30, $3F, $00, $00, $00, $00),
   ($00, $00, $3F, $30, $37, $36, $36, $36, $36),
   ($36, $36, $F7, $00, $FF, $00, $00, $00, $00),
   ($00, $00, $FF, $00, $F7, $36, $36, $36, $36),
   ($36, $36, $37, $30, $37, $36, $36, $36, $36),
   ($00, $00, $FF, $00, $FF, $00, $00, $00, $00),
   ($36, $36, $F7, $00, $F7, $36, $36, $36, $36),
   ($18, $18, $FF, $00, $FF, $00, $00, $00, $00),
   ($36, $36, $36, $36, $FF, $00, $00, $00, $00),
   ($00, $00, $FF, $00, $FF, $18, $18, $18, $18),
   ($00, $00, $00, $00, $FF, $36, $36, $36, $36),
   ($36, $36, $36, $36, $3F, $00, $00, $00, $00),
   ($18, $18, $1F, $18, $1F, $00, $00, $00, $00),
   ($00, $00, $1F, $18, $1F, $18, $18, $18, $18),
   ($00, $00, $00, $00, $3F, $36, $36, $36, $36),
   ($36, $36, $36, $36, $FF, $36, $36, $36, $36),
   ($18, $18, $FF, $18, $FF, $18, $18, $18, $18),
   ($18, $18, $18, $18, $F8, $00, $00, $00, $00),
   ($00, $00, $00, $00, $1F, $18, $18, $18, $18),
   ($FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF),
   ($00, $00, $00, $00, $FF, $FF, $FF, $FF, $FF),
   ($F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0),
   ($0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F),
   ($FF, $FF, $FF, $FF, $00, $00, $00, $00, $00),
   ($00, $00, $76, $DC, $C8, $DC, $76, $00, $00),
   ($78, $CC, $CC, $D8, $C6, $C6, $CC, $00, $00),
   ($FC, $CC, $C0, $C0, $C0, $C0, $C0, $00, $00),
   ($00, $FE, $6C, $6C, $6C, $6C, $6C, $00, $00),
   ($FC, $CC, $60, $30, $60, $CC, $FC, $00, $00),
   ($00, $00, $7E, $D8, $D8, $D8, $70, $00, $00),
   ($00, $66, $66, $66, $66, $7C, $60, $C0, $00),
   ($00, $76, $DC, $18, $18, $18, $18, $00, $00),
   ($FC, $30, $78, $CC, $CC, $78, $30, $FC, $00),
   ($38, $6C, $C6, $FE, $C6, $6C, $38, $00, $00),
   ($38, $6C, $C6, $C6, $6C, $6C, $EE, $00, $00),
   ($1C, $30, $18, $7C, $CC, $CC, $78, $00, $00),
   ($00, $00, $7E, $DB, $DB, $7E, $00, $00, $00),
   ($06, $0C, $7E, $DB, $DB, $7E, $60, $C0, $00),
   ($38, $60, $C0, $F8, $C0, $60, $38, $00, $00),
   ($78, $CC, $CC, $CC, $CC, $CC, $CC, $00, $00),
   ($00, $FC, $00, $FC, $00, $FC, $00, $00, $00),
   ($30, $30, $FC, $30, $30, $00, $FC, $00, $00),
   ($60, $30, $18, $30, $60, $00, $FC, $00, $00),
   ($18, $30, $60, $30, $18, $00, $FC, $00, $00),
   ($0E, $1B, $1B, $18, $18, $18, $18, $18, $00),
   ($18, $18, $18, $18, $18, $D8, $D8, $70, $00),
   ($30, $30, $00, $FC, $00, $30, $30, $00, $00),
   ($00, $76, $DC, $00, $76, $DC, $00, $00, $00),
   ($38, $6C, $6C, $38, $00, $00, $00, $00, $00),
   ($00, $00, $00, $18, $18, $00, $00, $00, $00),
   ($00, $00, $00, $00, $18, $00, $00, $00, $00),
   ($0F, $0C, $0C, $0C, $EC, $6C, $3C, $1C, $00),
   ($78, $6C, $6C, $6C, $6C, $00, $00, $00, $00),
   ($70, $18, $30, $60, $78, $00, $00, $00, $00),
   ($00, $00, $3C, $3C, $3C, $3C, $00, $00, $00),
   ($00, $00, $00, $00, $00, $00, $00, $00, $00)
  );

{==============================================================================}
{==============================================================================}
{Initialization Functions}
procedure Default8x9Init;
begin
 {}
 {Check Initialized}
 if Default8x9Initialized then Exit;

 {Load Default8x9}
 if FontLoad(@Default8x9FontHeader,@Default8x9FontData,SizeOf(Default8x9FontData)) = INVALID_HANDLE_VALUE then
  begin
   if PLATFORM_LOG_ENABLED then PlatformLogError('Failed to load Default8x9 font');
  end;

 Default8x9Initialized:=True;
end;

{==============================================================================}
{==============================================================================}

initialization
 Default8x9Init;

{==============================================================================}

finalization
 {Nothing}

{==============================================================================}
{==============================================================================}

end.