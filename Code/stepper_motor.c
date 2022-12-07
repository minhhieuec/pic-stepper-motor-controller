sbit LCD_RS at RD0_bit;
sbit LCD_EN at RD1_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;

int i;       //
int a;
int thuan=0;
int nghich=0;
int dem=0;
char xuat1[10];
char sovongquay[5];
char conlai[5];
void main() {
  ADCON1|=0X07;
  TRISD=0;
  TRISC=0;
  PORTC=0X00;
  PORTD=0X00;
  TRISB=1;
  PORTB=0XFF;
  OPTION_REG.B7=0;
  Lcd_Init();
  Lcd_Cmd(_LCD_CURSOR_OFF);
  Lcd_out(1,3,"DIEU KHIEN");
  lcd_out(2,2,"DONG CO BUOC");
  Delay_ms(1000);
  lcd_cmd(_lcd_clear);

  while(1)
  {
  while(1)
  {
       lcd_out(1,1," NHAP SO VONG :");
       delay_ms(100);
     if(button(&portb,0,100,0))
      {
         dem=dem+1;
         delay_ms(10);
         bytetostr(dem,xuat1);
         lcd_out(2,1,xuat1);
         delay_ms(10);
       }
       //quay thuan
     if(button(&portb,1,50,0))
      {
         thuan=dem;
         nghich=0;
         dem=0;
         delay_ms(10);
         lcd_cmd(_lcd_clear);
         break;
      }
      if(button(&portb,2,50,0))
      {
         nghich=dem;
         thuan=0;
         dem=0;
         delay_ms(10);
         lcd_cmd(_lcd_clear);
         break;
      }
   }
      for(i=0;i<thuan;i++)
      {
       bytetostr(thuan,sovongquay);
       lcd_out(1,1,"DANG QUAY THUAN");
       lcd_out(2,1,sovongquay);
       lcd_out(2,5,"VONG");
       bytetostr(thuan-i,conlai);
       lcd_out(2,9,conlai);
       PORTC=0x08;
       Delay_ms(100);
       PORTC=0x0C;
       Delay_ms(100);
       PORTC=0x04;
       Delay_ms(100);
       PORTC=0x06;
       Delay_ms(100);
       PORTC=0x02;
       Delay_ms(100);
       PORTC=0x03;
       Delay_ms(100);
       PORTC=0x01;
       Delay_ms(100);
       PORTC=0x09;
       Delay_ms(100);
       }

       //quay nghich
       for(i=0;i<nghich;i++)
      {
       bytetostr(nghich,sovongquay);
       lcd_out(1,1,"DANG QUAY NGHICH");
       lcd_out(2,1,sovongquay);
       lcd_out(2,5,"VONG");
       bytetostr(nghich-i,conlai);
       lcd_out(2,9,conlai);
       PORTC=0x01;
       Delay_ms(100);
       PORTC=0x03;
       Delay_ms(100);
       PORTC=0x02;
       Delay_ms(100);
       PORTC=0x06;
       Delay_ms(100);
       PORTC=0x04;
       Delay_ms(100);
       PORTC=0x0c;
       Delay_ms(100);
       PORTC=0x08;
       Delay_ms(100);
       PORTC=0x09;
       Delay_ms(100);
       }
       if(button(&portb,3,50,0))
      {
       PORTC=0x08;
       Delay_ms(100);
       PORTC=0x0C;
       Delay_ms(100);
       PORTC=0x04;
       Delay_ms(100);
       PORTC=0x06;
       Delay_ms(100);
       PORTC=0x02;
       Delay_ms(100);
       PORTC=0x03;
       Delay_ms(100);
       PORTC=0x01;
       Delay_ms(100);
       PORTC=0x09;
       Delay_ms(100);
       }
       if(thuan>0)
        {
         lcd_cmd(_lcd_clear);
         Lcd_out(1,6,"STOP");
         delay_ms(1000);
        }
       if(nghich>0)
        {
         lcd_cmd(_lcd_clear);
         Lcd_out(1,6,"STOP");
         delay_ms(1000);
        }
       
       
       if(button(&portb,2,50,0))
      {
         nghich=dem;
         thuan=0;
         dem=0;
         delay_ms(10);
         lcd_cmd(_lcd_clear);
         break;
      }
   }
  }