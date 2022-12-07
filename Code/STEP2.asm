
_main:

;STEP2.c,23 :: 		void main() {
;STEP2.c,24 :: 		ADCON1|=0X07;
	MOVLW      7
	IORWF      ADCON1+0, 1
;STEP2.c,25 :: 		TRISC=0;
	CLRF       TRISC+0
;STEP2.c,26 :: 		PORTC=0X00;
	CLRF       PORTC+0
;STEP2.c,27 :: 		PORTB=0XFF;
	MOVLW      255
	MOVWF      PORTB+0
;STEP2.c,28 :: 		TRISD=0;
	CLRF       TRISD+0
;STEP2.c,29 :: 		portd=0x00;
	CLRF       PORTD+0
;STEP2.c,30 :: 		TRISB=1;
	MOVLW      1
	MOVWF      TRISB+0
;STEP2.c,31 :: 		OPTION_REG.B7=0;
	BCF        OPTION_REG+0, 7
;STEP2.c,32 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;STEP2.c,33 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,34 :: 		Lcd_out(1,3,"DIEU KHIEN");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,35 :: 		lcd_out(2,2,"DONG CO BUOC");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,36 :: 		Delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;STEP2.c,37 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,38 :: 		while(1)
L_main1:
;STEP2.c,40 :: 		while(1)
L_main3:
;STEP2.c,42 :: 		if(button(&portb,3,10,0))
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      3
	MOVWF      FARG_Button_pin+0
	MOVLW      10
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main5
;STEP2.c,44 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,45 :: 		lcd_out(1,3,"TUY CHINH");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,46 :: 		LCD_OUT(2,3,"QUAY THUAN ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,47 :: 		PORTC=0x08;
	MOVLW      8
	MOVWF      PORTC+0
;STEP2.c,48 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;STEP2.c,49 :: 		PORTC=0x0C;
	MOVLW      12
	MOVWF      PORTC+0
;STEP2.c,50 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;STEP2.c,51 :: 		PORTC=0x04;
	MOVLW      4
	MOVWF      PORTC+0
;STEP2.c,52 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;STEP2.c,53 :: 		PORTC=0x06;
	MOVLW      6
	MOVWF      PORTC+0
;STEP2.c,54 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;STEP2.c,55 :: 		PORTC=0x02;
	MOVLW      2
	MOVWF      PORTC+0
;STEP2.c,56 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;STEP2.c,57 :: 		PORTC=0x03;
	MOVLW      3
	MOVWF      PORTC+0
;STEP2.c,58 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;STEP2.c,59 :: 		PORTC=0x01;
	MOVLW      1
	MOVWF      PORTC+0
;STEP2.c,60 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;STEP2.c,61 :: 		PORTC=0x09;
	MOVLW      9
	MOVWF      PORTC+0
;STEP2.c,62 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;STEP2.c,63 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,64 :: 		}
L_main5:
;STEP2.c,65 :: 		if(button(&portb,4,10,0))
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      4
	MOVWF      FARG_Button_pin+0
	MOVLW      10
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main14
;STEP2.c,67 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,68 :: 		lcd_out(1,3,"TUY CHINH");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,69 :: 		LCD_OUT(2,3,"QUAY NGHICH");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,70 :: 		PORTC=0x01;
	MOVLW      1
	MOVWF      PORTC+0
;STEP2.c,71 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;STEP2.c,72 :: 		PORTC=0x03;
	MOVLW      3
	MOVWF      PORTC+0
;STEP2.c,73 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;STEP2.c,74 :: 		PORTC=0x02;
	MOVLW      2
	MOVWF      PORTC+0
;STEP2.c,75 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;STEP2.c,76 :: 		PORTC=0x06;
	MOVLW      6
	MOVWF      PORTC+0
;STEP2.c,77 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;STEP2.c,78 :: 		PORTC=0x04;
	MOVLW      4
	MOVWF      PORTC+0
;STEP2.c,79 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;STEP2.c,80 :: 		PORTC=0x0c;
	MOVLW      12
	MOVWF      PORTC+0
;STEP2.c,81 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
	NOP
;STEP2.c,82 :: 		PORTC=0x08;
	MOVLW      8
	MOVWF      PORTC+0
;STEP2.c,83 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
	NOP
;STEP2.c,84 :: 		PORTC=0x09;
	MOVLW      9
	MOVWF      PORTC+0
;STEP2.c,85 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
;STEP2.c,86 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,87 :: 		}
L_main14:
;STEP2.c,88 :: 		lcd_out(1,1," NHAP SO VONG :");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,89 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
	NOP
;STEP2.c,91 :: 		if(button(&portb,0,50,0))
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main24
;STEP2.c,93 :: 		dem=dem+1;
	INCF       _dem+0, 1
	BTFSC      STATUS+0, 2
	INCF       _dem+1, 1
;STEP2.c,94 :: 		delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	NOP
;STEP2.c,95 :: 		bytetostr(dem,xuat1);
	MOVF       _dem+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _xuat1+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;STEP2.c,96 :: 		lcd_out(2,1,xuat1);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _xuat1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,97 :: 		delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	NOP
;STEP2.c,98 :: 		}
L_main24:
;STEP2.c,100 :: 		if(button(&portb,1,50,0))
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main27
;STEP2.c,102 :: 		thuan=dem*12;
	MOVF       _dem+0, 0
	MOVWF      R0+0
	MOVF       _dem+1, 0
	MOVWF      R0+1
	MOVLW      12
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _thuan+0
	MOVF       R0+1, 0
	MOVWF      _thuan+1
;STEP2.c,103 :: 		nghich=0;
	CLRF       _nghich+0
	CLRF       _nghich+1
;STEP2.c,104 :: 		dem=0;
	CLRF       _dem+0
	CLRF       _dem+1
;STEP2.c,105 :: 		delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	NOP
;STEP2.c,106 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,107 :: 		break;
	GOTO       L_main4
;STEP2.c,108 :: 		}
L_main27:
;STEP2.c,109 :: 		if(button(&portb,2,50,0))
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main29
;STEP2.c,111 :: 		nghich=dem*12;
	MOVF       _dem+0, 0
	MOVWF      R0+0
	MOVF       _dem+1, 0
	MOVWF      R0+1
	MOVLW      12
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       R0+0, 0
	MOVWF      _nghich+0
	MOVF       R0+1, 0
	MOVWF      _nghich+1
;STEP2.c,112 :: 		thuan=0;
	CLRF       _thuan+0
	CLRF       _thuan+1
;STEP2.c,113 :: 		dem=0;
	CLRF       _dem+0
	CLRF       _dem+1
;STEP2.c,114 :: 		delay_ms(10);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_main30:
	DECFSZ     R13+0, 1
	GOTO       L_main30
	DECFSZ     R12+0, 1
	GOTO       L_main30
	NOP
;STEP2.c,115 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,116 :: 		break;
	GOTO       L_main4
;STEP2.c,117 :: 		}
L_main29:
;STEP2.c,118 :: 		}
	GOTO       L_main3
L_main4:
;STEP2.c,119 :: 		for(i=0;i<thuan;i++)
	CLRF       _i+0
	CLRF       _i+1
L_main31:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _thuan+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main58
	MOVF       _thuan+0, 0
	SUBWF      _i+0, 0
L__main58:
	BTFSC      STATUS+0, 0
	GOTO       L_main32
;STEP2.c,121 :: 		bytetostr(thuan/12,sovongquay);
	MOVLW      12
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _thuan+0, 0
	MOVWF      R0+0
	MOVF       _thuan+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _sovongquay+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;STEP2.c,122 :: 		lcd_out(1,1,"DANG QUAY THUAN");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,123 :: 		lcd_out(2,1,sovongquay);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sovongquay+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,124 :: 		lcd_out(2,5,"VONG");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,127 :: 		PORTC=0x08;
	MOVLW      8
	MOVWF      PORTC+0
;STEP2.c,128 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	DECFSZ     R11+0, 1
	GOTO       L_main34
	NOP
	NOP
;STEP2.c,129 :: 		PORTC=0x0C;
	MOVLW      12
	MOVWF      PORTC+0
;STEP2.c,130 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	DECFSZ     R11+0, 1
	GOTO       L_main35
	NOP
	NOP
;STEP2.c,131 :: 		PORTC=0x04;
	MOVLW      4
	MOVWF      PORTC+0
;STEP2.c,132 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	DECFSZ     R11+0, 1
	GOTO       L_main36
	NOP
	NOP
;STEP2.c,133 :: 		PORTC=0x06;
	MOVLW      6
	MOVWF      PORTC+0
;STEP2.c,134 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	DECFSZ     R11+0, 1
	GOTO       L_main37
	NOP
	NOP
;STEP2.c,135 :: 		PORTC=0x02;
	MOVLW      2
	MOVWF      PORTC+0
;STEP2.c,136 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main38:
	DECFSZ     R13+0, 1
	GOTO       L_main38
	DECFSZ     R12+0, 1
	GOTO       L_main38
	DECFSZ     R11+0, 1
	GOTO       L_main38
	NOP
	NOP
;STEP2.c,137 :: 		PORTC=0x03;
	MOVLW      3
	MOVWF      PORTC+0
;STEP2.c,138 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main39:
	DECFSZ     R13+0, 1
	GOTO       L_main39
	DECFSZ     R12+0, 1
	GOTO       L_main39
	DECFSZ     R11+0, 1
	GOTO       L_main39
	NOP
	NOP
;STEP2.c,139 :: 		PORTC=0x01;
	MOVLW      1
	MOVWF      PORTC+0
;STEP2.c,140 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	DECFSZ     R11+0, 1
	GOTO       L_main40
	NOP
	NOP
;STEP2.c,141 :: 		PORTC=0x09;
	MOVLW      9
	MOVWF      PORTC+0
;STEP2.c,142 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main41:
	DECFSZ     R13+0, 1
	GOTO       L_main41
	DECFSZ     R12+0, 1
	GOTO       L_main41
	DECFSZ     R11+0, 1
	GOTO       L_main41
	NOP
	NOP
;STEP2.c,119 :: 		for(i=0;i<thuan;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;STEP2.c,143 :: 		}
	GOTO       L_main31
L_main32:
;STEP2.c,145 :: 		for(i=0;i<nghich;i++)
	CLRF       _i+0
	CLRF       _i+1
L_main42:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _nghich+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main59
	MOVF       _nghich+0, 0
	SUBWF      _i+0, 0
L__main59:
	BTFSC      STATUS+0, 0
	GOTO       L_main43
;STEP2.c,147 :: 		bytetostr(nghich/12,sovongquay);
	MOVLW      12
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _nghich+0, 0
	MOVWF      R0+0
	MOVF       _nghich+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _sovongquay+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;STEP2.c,148 :: 		lcd_out(1,1,"DANG QUAY NGHICH");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,149 :: 		lcd_out(2,1,sovongquay);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sovongquay+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,150 :: 		lcd_out(2,5,"VONG");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,153 :: 		PORTC=0x01;
	MOVLW      1
	MOVWF      PORTC+0
;STEP2.c,154 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main45:
	DECFSZ     R13+0, 1
	GOTO       L_main45
	DECFSZ     R12+0, 1
	GOTO       L_main45
	DECFSZ     R11+0, 1
	GOTO       L_main45
	NOP
	NOP
;STEP2.c,155 :: 		PORTC=0x03;
	MOVLW      3
	MOVWF      PORTC+0
;STEP2.c,156 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main46:
	DECFSZ     R13+0, 1
	GOTO       L_main46
	DECFSZ     R12+0, 1
	GOTO       L_main46
	DECFSZ     R11+0, 1
	GOTO       L_main46
	NOP
	NOP
;STEP2.c,157 :: 		PORTC=0x02;
	MOVLW      2
	MOVWF      PORTC+0
;STEP2.c,158 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main47:
	DECFSZ     R13+0, 1
	GOTO       L_main47
	DECFSZ     R12+0, 1
	GOTO       L_main47
	DECFSZ     R11+0, 1
	GOTO       L_main47
	NOP
	NOP
;STEP2.c,159 :: 		PORTC=0x06;
	MOVLW      6
	MOVWF      PORTC+0
;STEP2.c,160 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
	DECFSZ     R11+0, 1
	GOTO       L_main48
	NOP
	NOP
;STEP2.c,161 :: 		PORTC=0x04;
	MOVLW      4
	MOVWF      PORTC+0
;STEP2.c,162 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main49:
	DECFSZ     R13+0, 1
	GOTO       L_main49
	DECFSZ     R12+0, 1
	GOTO       L_main49
	DECFSZ     R11+0, 1
	GOTO       L_main49
	NOP
	NOP
;STEP2.c,163 :: 		PORTC=0x0c;
	MOVLW      12
	MOVWF      PORTC+0
;STEP2.c,164 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main50:
	DECFSZ     R13+0, 1
	GOTO       L_main50
	DECFSZ     R12+0, 1
	GOTO       L_main50
	DECFSZ     R11+0, 1
	GOTO       L_main50
	NOP
	NOP
;STEP2.c,165 :: 		PORTC=0x08;
	MOVLW      8
	MOVWF      PORTC+0
;STEP2.c,166 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main51:
	DECFSZ     R13+0, 1
	GOTO       L_main51
	DECFSZ     R12+0, 1
	GOTO       L_main51
	DECFSZ     R11+0, 1
	GOTO       L_main51
	NOP
	NOP
;STEP2.c,167 :: 		PORTC=0x09;
	MOVLW      9
	MOVWF      PORTC+0
;STEP2.c,168 :: 		Delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main52:
	DECFSZ     R13+0, 1
	GOTO       L_main52
	DECFSZ     R12+0, 1
	GOTO       L_main52
	DECFSZ     R11+0, 1
	GOTO       L_main52
	NOP
	NOP
;STEP2.c,145 :: 		for(i=0;i<nghich;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;STEP2.c,169 :: 		}
	GOTO       L_main42
L_main43:
;STEP2.c,171 :: 		if(thuan>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _thuan+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main60
	MOVF       _thuan+0, 0
	SUBLW      0
L__main60:
	BTFSC      STATUS+0, 0
	GOTO       L_main53
;STEP2.c,173 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,174 :: 		Lcd_out(1,6,"STOP");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr12_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,175 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main54:
	DECFSZ     R13+0, 1
	GOTO       L_main54
	DECFSZ     R12+0, 1
	GOTO       L_main54
	DECFSZ     R11+0, 1
	GOTO       L_main54
	NOP
;STEP2.c,176 :: 		}
L_main53:
;STEP2.c,177 :: 		if(nghich>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _nghich+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main61
	MOVF       _nghich+0, 0
	SUBLW      0
L__main61:
	BTFSC      STATUS+0, 0
	GOTO       L_main55
;STEP2.c,179 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;STEP2.c,180 :: 		Lcd_out(1,6,"STOP");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr13_STEP2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;STEP2.c,181 :: 		delay_ms(1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main56:
	DECFSZ     R13+0, 1
	GOTO       L_main56
	DECFSZ     R12+0, 1
	GOTO       L_main56
	DECFSZ     R11+0, 1
	GOTO       L_main56
	NOP
;STEP2.c,182 :: 		}
L_main55:
;STEP2.c,183 :: 		}
	GOTO       L_main1
;STEP2.c,184 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
