
_main:

;stepper_motor.c,23 :: 		void main() {
;stepper_motor.c,24 :: 		ADCON1|=0X07;
	MOVLW      7
	IORWF      ADCON1+0, 1
;stepper_motor.c,25 :: 		TRISD=0;
	CLRF       TRISD+0
;stepper_motor.c,26 :: 		TRISC=0;
	CLRF       TRISC+0
;stepper_motor.c,27 :: 		PORTC=0X00;
	CLRF       PORTC+0
;stepper_motor.c,28 :: 		PORTD=0X00;
	CLRF       PORTD+0
;stepper_motor.c,29 :: 		TRISB=1;
	MOVLW      1
	MOVWF      TRISB+0
;stepper_motor.c,30 :: 		PORTB=0XFF;
	MOVLW      255
	MOVWF      PORTB+0
;stepper_motor.c,31 :: 		OPTION_REG.B7=0;
	BCF        OPTION_REG+0, 7
;stepper_motor.c,32 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;stepper_motor.c,33 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;stepper_motor.c,34 :: 		Lcd_out(1,3,"DIEU KHIEN");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,35 :: 		lcd_out(2,2,"DONG CO BUOC");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,36 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;stepper_motor.c,37 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;stepper_motor.c,39 :: 		while(1)
L_main1:
;stepper_motor.c,41 :: 		while(1)
L_main3:
;stepper_motor.c,43 :: 		lcd_out(1,1," NHAP SO VONG :");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,44 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;stepper_motor.c,45 :: 		if(button(&portb,0,100,0))
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      100
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main6
;stepper_motor.c,47 :: 		dem=dem+1;
	INCF       _dem+0, 1
	BTFSC      STATUS+0, 2
	INCF       _dem+1, 1
;stepper_motor.c,48 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;stepper_motor.c,49 :: 		bytetostr(dem,xuat1);
	MOVF       _dem+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _xuat1+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;stepper_motor.c,50 :: 		lcd_out(2,1,xuat1);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _xuat1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,51 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
;stepper_motor.c,52 :: 		}
L_main6:
;stepper_motor.c,54 :: 		if(button(&portb,1,50,0))
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
	GOTO       L_main9
;stepper_motor.c,56 :: 		thuan=dem;
	MOVF       _dem+0, 0
	MOVWF      _thuan+0
	MOVF       _dem+1, 0
	MOVWF      _thuan+1
;stepper_motor.c,57 :: 		nghich=0;
	CLRF       _nghich+0
	CLRF       _nghich+1
;stepper_motor.c,58 :: 		dem=0;
	CLRF       _dem+0
	CLRF       _dem+1
;stepper_motor.c,59 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	NOP
;stepper_motor.c,60 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;stepper_motor.c,61 :: 		break;
	GOTO       L_main4
;stepper_motor.c,62 :: 		}
L_main9:
;stepper_motor.c,63 :: 		if(button(&portb,2,50,0))
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
	GOTO       L_main11
;stepper_motor.c,65 :: 		nghich=dem;
	MOVF       _dem+0, 0
	MOVWF      _nghich+0
	MOVF       _dem+1, 0
	MOVWF      _nghich+1
;stepper_motor.c,66 :: 		thuan=0;
	CLRF       _thuan+0
	CLRF       _thuan+1
;stepper_motor.c,67 :: 		dem=0;
	CLRF       _dem+0
	CLRF       _dem+1
;stepper_motor.c,68 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
;stepper_motor.c,69 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;stepper_motor.c,70 :: 		break;
	GOTO       L_main4
;stepper_motor.c,71 :: 		}
L_main11:
;stepper_motor.c,72 :: 		}
	GOTO       L_main3
L_main4:
;stepper_motor.c,73 :: 		for(i=0;i<thuan;i++)
	CLRF       _i+0
	CLRF       _i+1
L_main13:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _thuan+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main51
	MOVF       _thuan+0, 0
	SUBWF      _i+0, 0
L__main51:
	BTFSC      STATUS+0, 0
	GOTO       L_main14
;stepper_motor.c,75 :: 		bytetostr(thuan,sovongquay);
	MOVF       _thuan+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _sovongquay+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;stepper_motor.c,76 :: 		lcd_out(1,1,"DANG QUAY THUAN");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,77 :: 		lcd_out(2,1,sovongquay);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sovongquay+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,78 :: 		lcd_out(2,5,"VONG");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,79 :: 		bytetostr(thuan-i,conlai);
	MOVF       _i+0, 0
	SUBWF      _thuan+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _conlai+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;stepper_motor.c,80 :: 		lcd_out(2,9,conlai);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _conlai+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,81 :: 		PORTC=0x08;
	MOVLW      8
	MOVWF      PORTC+0
;stepper_motor.c,82 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
;stepper_motor.c,83 :: 		PORTC=0x0C;
	MOVLW      12
	MOVWF      PORTC+0
;stepper_motor.c,84 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
;stepper_motor.c,85 :: 		PORTC=0x04;
	MOVLW      4
	MOVWF      PORTC+0
;stepper_motor.c,86 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;stepper_motor.c,87 :: 		PORTC=0x06;
	MOVLW      6
	MOVWF      PORTC+0
;stepper_motor.c,88 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;stepper_motor.c,89 :: 		PORTC=0x02;
	MOVLW      2
	MOVWF      PORTC+0
;stepper_motor.c,90 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
;stepper_motor.c,91 :: 		PORTC=0x03;
	MOVLW      3
	MOVWF      PORTC+0
;stepper_motor.c,92 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
;stepper_motor.c,93 :: 		PORTC=0x01;
	MOVLW      1
	MOVWF      PORTC+0
;stepper_motor.c,94 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
;stepper_motor.c,95 :: 		PORTC=0x09;
	MOVLW      9
	MOVWF      PORTC+0
;stepper_motor.c,96 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
;stepper_motor.c,73 :: 		for(i=0;i<thuan;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;stepper_motor.c,97 :: 		}
	GOTO       L_main13
L_main14:
;stepper_motor.c,100 :: 		for(i=0;i<nghich;i++)
	CLRF       _i+0
	CLRF       _i+1
L_main24:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _nghich+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main52
	MOVF       _nghich+0, 0
	SUBWF      _i+0, 0
L__main52:
	BTFSC      STATUS+0, 0
	GOTO       L_main25
;stepper_motor.c,102 :: 		bytetostr(nghich,sovongquay);
	MOVF       _nghich+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _sovongquay+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;stepper_motor.c,103 :: 		lcd_out(1,1,"DANG QUAY NGHICH");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,104 :: 		lcd_out(2,1,sovongquay);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _sovongquay+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,105 :: 		lcd_out(2,5,"VONG");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,106 :: 		bytetostr(nghich-i,conlai);
	MOVF       _i+0, 0
	SUBWF      _nghich+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _conlai+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;stepper_motor.c,107 :: 		lcd_out(2,9,conlai);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      9
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _conlai+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,108 :: 		PORTC=0x01;
	MOVLW      1
	MOVWF      PORTC+0
;stepper_motor.c,109 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
;stepper_motor.c,110 :: 		PORTC=0x03;
	MOVLW      3
	MOVWF      PORTC+0
;stepper_motor.c,111 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	DECFSZ     R11+0, 1
	GOTO       L_main28
	NOP
;stepper_motor.c,112 :: 		PORTC=0x02;
	MOVLW      2
	MOVWF      PORTC+0
;stepper_motor.c,113 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	DECFSZ     R11+0, 1
	GOTO       L_main29
	NOP
;stepper_motor.c,114 :: 		PORTC=0x06;
	MOVLW      6
	MOVWF      PORTC+0
;stepper_motor.c,115 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main30:
	DECFSZ     R13+0, 1
	GOTO       L_main30
	DECFSZ     R12+0, 1
	GOTO       L_main30
	DECFSZ     R11+0, 1
	GOTO       L_main30
	NOP
;stepper_motor.c,116 :: 		PORTC=0x04;
	MOVLW      4
	MOVWF      PORTC+0
;stepper_motor.c,117 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
	NOP
;stepper_motor.c,118 :: 		PORTC=0x0c;
	MOVLW      12
	MOVWF      PORTC+0
;stepper_motor.c,119 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	DECFSZ     R11+0, 1
	GOTO       L_main32
	NOP
;stepper_motor.c,120 :: 		PORTC=0x08;
	MOVLW      8
	MOVWF      PORTC+0
;stepper_motor.c,121 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
	DECFSZ     R11+0, 1
	GOTO       L_main33
	NOP
;stepper_motor.c,122 :: 		PORTC=0x09;
	MOVLW      9
	MOVWF      PORTC+0
;stepper_motor.c,123 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	DECFSZ     R11+0, 1
	GOTO       L_main34
	NOP
;stepper_motor.c,100 :: 		for(i=0;i<nghich;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;stepper_motor.c,124 :: 		}
	GOTO       L_main24
L_main25:
;stepper_motor.c,125 :: 		if(button(&portb,3,50,0))
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      3
	MOVWF      FARG_Button_pin+0
	MOVLW      50
	MOVWF      FARG_Button_time_ms+0
	CLRF       FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main35
;stepper_motor.c,127 :: 		PORTC=0x08;
	MOVLW      8
	MOVWF      PORTC+0
;stepper_motor.c,128 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	DECFSZ     R11+0, 1
	GOTO       L_main36
	NOP
;stepper_motor.c,129 :: 		PORTC=0x0C;
	MOVLW      12
	MOVWF      PORTC+0
;stepper_motor.c,130 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	DECFSZ     R11+0, 1
	GOTO       L_main37
	NOP
;stepper_motor.c,131 :: 		PORTC=0x04;
	MOVLW      4
	MOVWF      PORTC+0
;stepper_motor.c,132 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main38:
	DECFSZ     R13+0, 1
	GOTO       L_main38
	DECFSZ     R12+0, 1
	GOTO       L_main38
	DECFSZ     R11+0, 1
	GOTO       L_main38
	NOP
;stepper_motor.c,133 :: 		PORTC=0x06;
	MOVLW      6
	MOVWF      PORTC+0
;stepper_motor.c,134 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main39:
	DECFSZ     R13+0, 1
	GOTO       L_main39
	DECFSZ     R12+0, 1
	GOTO       L_main39
	DECFSZ     R11+0, 1
	GOTO       L_main39
	NOP
;stepper_motor.c,135 :: 		PORTC=0x02;
	MOVLW      2
	MOVWF      PORTC+0
;stepper_motor.c,136 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	DECFSZ     R11+0, 1
	GOTO       L_main40
	NOP
;stepper_motor.c,137 :: 		PORTC=0x03;
	MOVLW      3
	MOVWF      PORTC+0
;stepper_motor.c,138 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main41:
	DECFSZ     R13+0, 1
	GOTO       L_main41
	DECFSZ     R12+0, 1
	GOTO       L_main41
	DECFSZ     R11+0, 1
	GOTO       L_main41
	NOP
;stepper_motor.c,139 :: 		PORTC=0x01;
	MOVLW      1
	MOVWF      PORTC+0
;stepper_motor.c,140 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main42:
	DECFSZ     R13+0, 1
	GOTO       L_main42
	DECFSZ     R12+0, 1
	GOTO       L_main42
	DECFSZ     R11+0, 1
	GOTO       L_main42
	NOP
;stepper_motor.c,141 :: 		PORTC=0x09;
	MOVLW      9
	MOVWF      PORTC+0
;stepper_motor.c,142 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main43:
	DECFSZ     R13+0, 1
	GOTO       L_main43
	DECFSZ     R12+0, 1
	GOTO       L_main43
	DECFSZ     R11+0, 1
	GOTO       L_main43
	NOP
;stepper_motor.c,143 :: 		}
L_main35:
;stepper_motor.c,144 :: 		if(thuan>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _thuan+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main53
	MOVF       _thuan+0, 0
	SUBLW      0
L__main53:
	BTFSC      STATUS+0, 0
	GOTO       L_main44
;stepper_motor.c,146 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;stepper_motor.c,147 :: 		Lcd_out(1,6,"STOP");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,148 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;stepper_motor.c,149 :: 		}
L_main44:
;stepper_motor.c,150 :: 		if(nghich>0)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _nghich+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main54
	MOVF       _nghich+0, 0
	SUBLW      0
L__main54:
	BTFSC      STATUS+0, 0
	GOTO       L_main46
;stepper_motor.c,152 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;stepper_motor.c,153 :: 		Lcd_out(1,6,"STOP");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_stepper_motor+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;stepper_motor.c,154 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;stepper_motor.c,155 :: 		}
L_main46:
;stepper_motor.c,158 :: 		if(button(&portb,2,50,0))
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
	GOTO       L_main48
;stepper_motor.c,160 :: 		nghich=dem;
	MOVF       _dem+0, 0
	MOVWF      _nghich+0
	MOVF       _dem+1, 0
	MOVWF      _nghich+1
;stepper_motor.c,161 :: 		thuan=0;
	CLRF       _thuan+0
	CLRF       _thuan+1
;stepper_motor.c,162 :: 		dem=0;
	CLRF       _dem+0
	CLRF       _dem+1
;stepper_motor.c,163 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main49:
	DECFSZ     R13+0, 1
	GOTO       L_main49
	DECFSZ     R12+0, 1
	GOTO       L_main49
	NOP
;stepper_motor.c,164 :: 		lcd_cmd(_lcd_clear);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;stepper_motor.c,165 :: 		break;
	GOTO       L_main2
;stepper_motor.c,166 :: 		}
L_main48:
;stepper_motor.c,167 :: 		}
	GOTO       L_main1
L_main2:
;stepper_motor.c,168 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
