import processing.serial.*;
import processing.net.*;
import controlP5.*;

ControlP5 cp5;

Serial myPort;
Server myServer;
int port = 9001;
byte zero = 0;

void setup()
{
  myServer = new Server(this, port);
  size(1000, 600);
  cp5 = new ControlP5(this);

  //待機
  cp5.addButton("capOne")
    .setValue(0)
      .setPosition(480, 0)
        .setSize(100, 19);
        
  //待機
  cp5.addButton("capTwo")
    .setValue(0)
      .setPosition(600, 0)
        .setSize(100, 19);
        
  //待機
  cp5.addButton("capThree")
    .setValue(0)
      .setPosition(720, 0)
        .setSize(100, 19);

  //待機
  cp5.addButton("repeatFlvs")
    .setValue(0)
      .setPosition(0, 0)
        .setSize(100, 19);
        
  //待機
  cp5.addButton("selectFlvOne")
    .setValue(0)
      .setPosition(120, 0)
        .setSize(100, 19);
        
  //待機
  cp5.addButton("selectFlvTwo")
    .setValue(0)
      .setPosition(240, 0)
        .setSize(100, 19);
        
  //待機
  cp5.addButton("scene1_Standby")
    .setValue(0)
      .setPosition(0, 30)
        .setSize(100, 19);
  //待機
  cp5.addButton("scene2_Standby")
    .setValue(0)
      .setPosition(120, 30)
        .setSize(100, 19);
        
  //待機
  cp5.addButton("scene3_Standby")
    .setValue(0)
      .setPosition(240, 30)
        .setSize(100, 19);

  //版面1 全台
  cp5.addButton("scene1_All")
    .setValue(0)
      .setPosition(100, 100)
        .setSize(100, 19);

  //版面1 全台輪播 
  cp5.addButton("scene1_RepeatAll")
    .setValue(0)
      .setPosition(100, 130)
        .setSize(100, 19);

  //版面1
  cp5.addButton("scene1_Taipei")
    .setValue(0)
      .setPosition(100, 190)
        .setSize(100, 19);

  cp5.addButton("scene1_NewTaipei")
    .setValue(0)
      .setPosition(100, 220)
        .setSize(100, 19);

  cp5.addButton("scene1_Taichung")
    .setValue(0)
      .setPosition(100, 250)
        .setSize(100, 19);

  cp5.addButton("scene1_Tainan")
    .setValue(0)
      .setPosition(100, 280)
        .setSize(100, 19);

  cp5.addButton("scene1_Kaohsiung")
    .setValue(0)
      .setPosition(100, 310)
        .setSize(100, 19);

  cp5.addButton("scene1_Keelung")
    .setValue(0)
      .setPosition(100, 340)
        .setSize(100, 19);

  cp5.addButton("scene1_Taoyuan")
    .setValue(0)
      .setPosition(100, 370)
        .setSize(100, 19);

  cp5.addButton("scene1_Hsinchu")
    .setValue(0)
      .setPosition(100, 400)
        .setSize(100, 19);

  cp5.addButton("scene1_HsinchuCity")
    .setValue(0)
      .setPosition(100, 430)
        .setSize(100, 19);

  cp5.addButton("scene1_Miaoli")
    .setValue(0)
      .setPosition(100, 460)
        .setSize(100, 19);

  cp5.addButton("scene1_Changhua")
    .setValue(0)
      .setPosition(100, 490)
        .setSize(100, 19);

  cp5.addButton("scene1_Nantou")
    .setValue(0)
      .setPosition(250, 190)
        .setSize(100, 19);

  cp5.addButton("scene1_Yunlin")
    .setValue(0)
      .setPosition(250, 220)
        .setSize(100, 19);

  cp5.addButton("scene1_Chiayi")
    .setValue(0)
      .setPosition(250, 250)
        .setSize(100, 19);

  cp5.addButton("scene1_ChiayiCity")
    .setValue(0)
      .setPosition(250, 280)
        .setSize(100, 19);

  cp5.addButton("scene1_Pingtung")
    .setValue(0)
      .setPosition(250, 310)
        .setSize(100, 19);

  cp5.addButton("scene1_Ilan")
    .setValue(0)
      .setPosition(250, 340)
        .setSize(100, 19);

  cp5.addButton("scene1_Hualien")
    .setValue(0)
      .setPosition(250, 370)
        .setSize(100, 19);

  cp5.addButton("scene1_Taitung")
    .setValue(0)
      .setPosition(250, 400)
        .setSize(100, 19);

  cp5.addButton("scene1_Penghu")
    .setValue(0)
      .setPosition(250, 430)
        .setSize(100, 19);

  cp5.addButton("scene1_Kinmen")
    .setValue(0)
      .setPosition(250, 460)
        .setSize(100, 19);

  cp5.addButton("scene1_Lienchiang")
    .setValue(0)
      .setPosition(250, 490)
        .setSize(100, 19);

  //版面2 全台
  cp5.addButton("scene2_All")
    .setValue(0)
      .setPosition(400, 100)
        .setSize(100, 19);

  //版面2 全台輪播
  cp5.addButton("scene2_RepeatAll")
    .setValue(0)
      .setPosition(400, 130)
        .setSize(100, 19);

  //版面2
  cp5.addButton("scene2_Taipei")
    .setValue(0)
      .setPosition(400, 190)
        .setSize(100, 19);

  cp5.addButton("scene2_NewTaipei")
    .setValue(0)
      .setPosition(400, 220)
        .setSize(100, 19);

  cp5.addButton("scene2_Taichung")
    .setValue(0)
      .setPosition(400, 250)
        .setSize(100, 19);

  cp5.addButton("scene2_Tainan")
    .setValue(0)
      .setPosition(400, 280)
        .setSize(100, 19);

  cp5.addButton("scene2_Kaohsiung")
    .setValue(0)
      .setPosition(400, 310)
        .setSize(100, 19);

  cp5.addButton("scene2_Keelung")
    .setValue(0)
      .setPosition(400, 340)
        .setSize(100, 19);

  cp5.addButton("scene2_Taoyuan")
    .setValue(0)
      .setPosition(400, 370)
        .setSize(100, 19);

  cp5.addButton("scene2_Hsinchu")
    .setValue(0)
      .setPosition(400, 400)
        .setSize(100, 19);

  cp5.addButton("scene2_HsinchuCity")
    .setValue(0)
      .setPosition(400, 430)
        .setSize(100, 19);

  cp5.addButton("scene2_Miaoli")
    .setValue(0)
      .setPosition(400, 460)
        .setSize(100, 19);

  cp5.addButton("scene2_Changhua")
    .setValue(0)
      .setPosition(400, 490)
        .setSize(100, 19);

  cp5.addButton("scene2_Nantou")
    .setValue(0)
      .setPosition(550, 190)
        .setSize(100, 19);

  cp5.addButton("scene2_Yunlin")
    .setValue(0)
      .setPosition(550, 220)
        .setSize(100, 19);

  cp5.addButton("scene2_Chiayi")
    .setValue(0)
      .setPosition(550, 250)
        .setSize(100, 19);

  cp5.addButton("scene2_ChiayiCity")
    .setValue(0)
      .setPosition(550, 280)
        .setSize(100, 19);

  cp5.addButton("scene2_Pingtung")
    .setValue(0)
      .setPosition(550, 310)
        .setSize(100, 19);

  cp5.addButton("scene2_Ilan")
    .setValue(0)
      .setPosition(550, 340)
        .setSize(100, 19);

  cp5.addButton("scene2_Hualien")
    .setValue(0)
      .setPosition(550, 370)
        .setSize(100, 19);

  cp5.addButton("scene2_Taitung")
    .setValue(0)
      .setPosition(550, 400)
        .setSize(100, 19);

  cp5.addButton("scene2_Penghu")
    .setValue(0)
      .setPosition(550, 430)
        .setSize(100, 19);

  cp5.addButton("scene2_Kinmen")
    .setValue(0)
      .setPosition(550, 460)
        .setSize(100, 19);

  cp5.addButton("scene2_Lienchiang")
    .setValue(0)
      .setPosition(550, 490)
        .setSize(100, 19);

  //版型3 全台
  cp5.addButton("scene3_All")
    .setValue(0)
      .setPosition(700, 100)
        .setSize(100, 19);

  //版型3 全台輪播
  cp5.addButton("scene3_RepeatAll")
    .setValue(0)
      .setPosition(700, 130)
        .setSize(100, 19);

  //版型3
  cp5.addButton("scene3_Taipei")
    .setValue(0)
      .setPosition(700, 190)
        .setSize(100, 19);

  cp5.addButton("scene3_NewTaipei")
    .setValue(0)
      .setPosition(700, 220)
        .setSize(100, 19);

  cp5.addButton("scene3_Taichung")
    .setValue(0)
      .setPosition(700, 250)
        .setSize(100, 19);

  cp5.addButton("scene3_Tainan")
    .setValue(0)
      .setPosition(700, 280)
        .setSize(100, 19);

  cp5.addButton("scene3_Kaohsiung")
    .setValue(0)
      .setPosition(700, 310)
        .setSize(100, 19);

  cp5.addButton("scene3_Keelung")
    .setValue(0)
      .setPosition(700, 340)
        .setSize(100, 19);

  cp5.addButton("scene3_Taoyuan")
    .setValue(0)
      .setPosition(700, 370)
        .setSize(100, 19);

  cp5.addButton("scene3_Hsinchu")
    .setValue(0)
      .setPosition(700, 400)
        .setSize(100, 19);

  cp5.addButton("scene3_HsinchuCity")
    .setValue(0)
      .setPosition(700, 430)
        .setSize(100, 19);

  cp5.addButton("scene3_Miaoli")
    .setValue(0)
      .setPosition(700, 460)
        .setSize(100, 19);

  cp5.addButton("scene3_Changhua")
    .setValue(0)
      .setPosition(700, 490)
        .setSize(100, 19);

  cp5.addButton("scene3_Nantou")
    .setValue(0)
      .setPosition(850, 190)
        .setSize(100, 19);

  cp5.addButton("scene3_Yunlin")
    .setValue(0)
      .setPosition(850, 220)
        .setSize(100, 19);

  cp5.addButton("scene3_Chiayi")
    .setValue(0)
      .setPosition(850, 250)
        .setSize(100, 19);

  cp5.addButton("scene3_ChiayiCity")
    .setValue(0)
      .setPosition(850, 280)
        .setSize(100, 19);

  cp5.addButton("scene3_Pingtung")
    .setValue(0)
      .setPosition(850, 310)
        .setSize(100, 19);

  cp5.addButton("scene3_Ilan")
    .setValue(0)
      .setPosition(850, 340)
        .setSize(100, 19);

  cp5.addButton("scene3_Hualien")
    .setValue(0)
      .setPosition(850, 370)
        .setSize(100, 19);

  cp5.addButton("scene3_Taitung")
    .setValue(0)
      .setPosition(850, 400)
        .setSize(100, 19);

  cp5.addButton("scene3_Penghu")
    .setValue(0)
      .setPosition(850, 430)
        .setSize(100, 19);

  cp5.addButton("scene3_Kinmen")
    .setValue(0)
      .setPosition(850, 460)
        .setSize(100, 19);

  cp5.addButton("scene3_Lienchiang")
    .setValue(0)
      .setPosition(850, 490)
        .setSize(100, 19);
}

void draw()
{
}

public void repeatFlvs(int theValue) {
  println("/science/repeat");
  myServer.write("/science/repeat");
  myServer.write(zero);
}

public void selectFlvOne(int theValue) {
  println("/science/0");
  myServer.write("/science/0");
  myServer.write(zero);
}

public void selectFlvTwo(int theValue) {
  println("/science/1");
  myServer.write("/science/1");
  myServer.write(zero);
}

//版型1 全台

public void scene1_All(int theValue) {
  println("/weather1/scene1_All");
  myServer.write("/weather1/scene1_All");
  myServer.write(zero);
}

//版型1 全台輪播

public void scene1_RepeatAll(int theValue) {
  println("/weather1/scene1_RepeatAll");
  myServer.write("/weather1/scene1_RepeatAll");
  myServer.write(zero);
}

//版型1

public void scene1_Taipei(int theValue) {
  println("/weather1/Taipei");
  myServer.write("/weather1/Taipei");
  myServer.write(zero);
}

public void scene1_NewTaipei(int theValue) {
  println("/weather1/NewTaipei");
  myServer.write("/weather1/NewTaipei");
  myServer.write(zero);
}

public void scene1_Taichung(int theValue) {
  println("/weather1/Taichung");
  myServer.write("/weather1/Taichung");
  myServer.write(zero);
}

public void scene1_Tainan(int theValue) {
  println("/weather1/Tainan");
  myServer.write("/weather1/Tainan");
  myServer.write(zero);
}

public void scene1_Kaohsiung(int theValue) {
  println("/weather1/Kaohsiung");
  myServer.write("/weather1/Kaohsiung");
  myServer.write(zero);
}

public void scene1_Keelung(int theValue) {
  println("/weather1/Keelung");
  myServer.write("/weather1/Keelung");
  myServer.write(zero);
}
public void scene1_Taoyuan(int theValue) {
  println("/weather1/Taoyuan");
  myServer.write("/weather1/Taoyuan");
  myServer.write(zero);
}

public void scene1_Hsinchu(int theValue) {
  println("/weather1/Hsinchu");
  myServer.write("/weather1/Hsinchu");
  myServer.write(zero);
}
public void scene1_HsinchuCity(int theValue) {
  println("/weather1/HsinchuCity");
  myServer.write("/weather1/HsinchuCity");
  myServer.write(zero);
}

public void scene1_Miaoli(int theValue) {
  println("/weather1/Miaoli");
  myServer.write("/weather1/Miaoli");
  myServer.write(zero);
}
public void scene1_Changhua(int theValue) {
  println("/weather1/Changhua");
  myServer.write("/weather1/Changhua");
  myServer.write(zero);
}

public void scene1_Nantou(int theValue) {
  println("/weather1/Nantou");
  myServer.write("/weather1/Nantou");
  myServer.write(zero);
}
public void scene1_Yunlin(int theValue) {
  println("/weather1/Yunlin");
  myServer.write("/weather1/Yunlin");
  myServer.write(zero);
}

public void scene1_Chiayi(int theValue) {
  println("/weather1/Chiayi");
  myServer.write("/weather1/Chiayi");
  myServer.write(zero);
}
public void scene1_ChiayiCity(int theValue) {
  println("/weather1/ChiayiCity");
  myServer.write("/weather1/ChiayiCity");
  myServer.write(zero);
}

public void scene1_Pingtung(int theValue) {
  println("/weather1/Pingtung");
  myServer.write("/weather1/Pingtung");
  myServer.write(zero);
}

public void scene1_Ilan(int theValue) {
  println("/weather1/Ilan");
  myServer.write("/weather1/Ilan");
  myServer.write(zero);
}

public void scene1_Hualien(int theValue) {
  println("/weather1/Hualien");
  myServer.write("/weather1/Hualien");
  myServer.write(zero);
}

public void scene1_Taitung(int theValue) {
  println("/weather1/Taitung");
  myServer.write("/weather1/Taitung");
  myServer.write(zero);
}
public void scene1_Penghu(int theValue) {
  println("/weather1/Penghu");
  myServer.write("/weather1/Penghu");
  myServer.write(zero);
}

public void scene1_Kinmen(int theValue) {
  println("/weather1/Kinmen");
  myServer.write("/weather1/Kinmen");
  myServer.write(zero);
}
public void scene1_Lienchiang(int theValue) {
  println("/weather1/Lienchiang");
  myServer.write("/weather1/Lienchiang");
  myServer.write(zero);
}

//版型2
public void scene2_All(int theValue) {
  println("/weather2/scene2_All");
  myServer.write("/weather2/scene2_All");
  myServer.write(zero);
}

//版型2
public void scene2_RepeatAll(int theValue) {
  println("/weather2/scene2_RepeatAll");
  myServer.write("/weather2/scene2_RepeatAll");
  myServer.write(zero);
}

//版型2

public void scene2_Taipei(int theValue) {
  println("/weather2/Taipei");
  myServer.write("/weather2/Taipei");
  myServer.write(zero);
}

public void scene2_NewTaipei(int theValue) {
  println("/weather2/NewTaipei");
  myServer.write("/weather2/NewTaipei");
  myServer.write(zero);
}

public void scene2_Taichung(int theValue) {
  println("/weather2/Taichung");
  myServer.write("/weather2/Taichung");
  myServer.write(zero);
}

public void scene2_Tainan(int theValue) {
  println("/weather2/Tainan");
  myServer.write("/weather2/Tainan");
  myServer.write(zero);
}

public void scene2_Kaohsiung(int theValue) {
  println("/weather2/Kaohsiung");
  myServer.write("/weather2/Kaohsiung");
  myServer.write(zero);
}

public void scene2_Keelung(int theValue) {
  println("/weather2/Keelung");
  myServer.write("/weather2/Keelung");
  myServer.write(zero);
}
public void scene2_Taoyuan(int theValue) {
  println("/weather2/Taoyuan");
  myServer.write("/weather2/Taoyuan");
  myServer.write(zero);
}

public void scene2_Hsinchu(int theValue) {
  println("/weather2/Hsinchu");
  myServer.write("/weather2/Hsinchu");
  myServer.write(zero);
}
public void scene2_HsinchuCity(int theValue) {
  println("/weather2/HsinchuCity");
  myServer.write("/weather2/HsinchuCity");
  myServer.write(zero);
}

public void scene2_Miaoli(int theValue) {
  println("/weather2/Miaoli");
  myServer.write("/weather2/Miaoli");
  myServer.write(zero);
}
public void scene2_Changhua(int theValue) {
  println("/weather2/Changhua");
  myServer.write("/weather2/Changhua");
  myServer.write(zero);
}

public void scene2_Nantou(int theValue) {
  println("/weather2/Nantou");
  myServer.write("/weather2/Nantou");
  myServer.write(zero);
}
public void scene2_Yunlin(int theValue) {
  println("/weather2/Yunlin");
  myServer.write("/weather2/Yunlin");
  myServer.write(zero);
}

public void scene2_Chiayi(int theValue) {
  println("/weather2/Chiayi");
  myServer.write("/weather2/Chiayi");
  myServer.write(zero);
}
public void scene2_ChiayiCity(int theValue) {
  println("/weather2/ChiayiCity");
  myServer.write("/weather2/ChiayiCity");
  myServer.write(zero);
}

public void scene2_Pingtung(int theValue) {
  println("/weather2/Pingtung");
  myServer.write("/weather2/Pingtung");
  myServer.write(zero);
}
public void scene2_Ilan(int theValue) {
  println("/weather2/Ilan");
  myServer.write("/weather2/Ilan");
  myServer.write(zero);
}

public void scene2_Taitung(int theValue) {
  println("/weather2/Taitung");
  myServer.write("/weather2/Taitung");
  myServer.write(zero);
}
public void scene2_Penghu(int theValue) {
  println("/weather2/Penghu");
  myServer.write("/weather2/Penghu");
  myServer.write(zero);
}

public void scene2_Kinmen(int theValue) {
  println("/weather2/Kinmen");
  myServer.write("/weather2/Kinmen");
  myServer.write(zero);
}
public void scene2_Lienchiang(int theValue) {
  println("/weather2/Lienchiang");
  myServer.write("/weather2/Lienchiang");
  myServer.write(zero);
}

//版型3
public void scene3_All(int theValue) {
  println("/weather3/scene3_All");
  myServer.write("/weather3/scene3_All");
  myServer.write(zero);
}

//版型3
public void scene3_RepeatAll(int theValue) {
  println("/weather3/scene3_RepeatAll");
  myServer.write("/weather3/scene3_RepeatAll");
  myServer.write(zero);
}

//版型3

public void scene3_Taipei(int theValue) {
  println("/weather3/Taipei");
  myServer.write("/weather3/Taipei");
  myServer.write(zero);
}

public void scene3_NewTaipei(int theValue) {
  println("/weather3/NewTaipei");
  myServer.write("/weather3/NewTaipei");
  myServer.write(zero);
}

public void scene3_Taichung(int theValue) {
  println("/weather3/Taichung");
  myServer.write("/weather3/Taichung");
  myServer.write(zero);
}

public void scene3_Tainan(int theValue) {
  println("/weather3/Tainan");
  myServer.write("/weather3/Tainan");
  myServer.write(zero);
}

public void scene3_Kaohsiung(int theValue) {
  println("/weather3/Kaohsiung");
  myServer.write("/weather3/Kaohsiung");
  myServer.write(zero);
}

public void scene3_Keelung(int theValue) {
  println("/weather3/Keelung");
  myServer.write("/weather3/Keelung");
  myServer.write(zero);
}
public void scene3_Taoyuan(int theValue) {
  println("/weather3/Taoyuan");
  myServer.write("/weather3/Taoyuan");
  myServer.write(zero);
}

public void scene3_Hsinchu(int theValue) {
  println("/weather3/Hsinchu");
  myServer.write("/weather3/Hsinchu");
  myServer.write(zero);
}
public void scene3_HsinchuCity(int theValue) {
  println("/weather3/HsinchuCity");
  myServer.write("/weather3/HsinchuCity");
  myServer.write(zero);
}

public void scene3_Miaoli(int theValue) {
  println("/weather3/Miaoli");
  myServer.write("/weather3/Miaoli");
  myServer.write(zero);
}
public void scene3_Changhua(int theValue) {
  println("/weather3/Changhua");
  myServer.write("/weather3/Changhua");
  myServer.write(zero);
}

public void scene3_Nantou(int theValue) {
  println("/weather3/Nantou");
  myServer.write("/weather3/Nantou");
  myServer.write(zero);
}
public void scene3_Yunlin(int theValue) {
  println("/weather3/Yunlin");
  myServer.write("/weather3/Yunlin");
  myServer.write(zero);
}

public void scene3_Chiayi(int theValue) {
  println("/weather3/Chiayi");
  myServer.write("/weather3/Chiayi");
  myServer.write(zero);
}
public void scene3_ChiayiCity(int theValue) {
  println("/weather3/ChiayiCity");
  myServer.write("/weather3/ChiayiCity");
  myServer.write(zero);
}

public void scene3_Pingtung(int theValue) {
  println("/weather3/Pingtung");
  myServer.write("/weather3/Pingtung");
  myServer.write(zero);
}
public void scene3_Ilan(int theValue) {
  println("/weather3/Ilan");
  myServer.write("/weather3/Ilan");
  myServer.write(zero);
}

public void scene3_Taitung(int theValue) {
  println("/weather3/Taitung");
  myServer.write("/weather3/Taitung");
  myServer.write(zero);
}
public void scene3_Penghu(int theValue) {
  println("/weather3/Penghu");
  myServer.write("/weather3/Penghu");
  myServer.write(zero);
}

public void scene3_Kinmen(int theValue) {
  println("/weather3/Kinmen");
  myServer.write("/weather3/Kinmen");
  myServer.write(zero);
}
public void scene3_Lienchiang(int theValue) {
  println("/weather3/Lienchiang");
  myServer.write("/weather3/Lienchiang");
  myServer.write(zero);
}

public void scene1_Standby(int theValue) {
  println("/weather1");
  myServer.write("/weather1");
  myServer.write(zero);
}

public void scene2_Standby(int theValue) {
  println("/weather2");
  myServer.write("/weather2");
  myServer.write(zero);
}

public void scene3_Standby(int theValue) {
  println("/weather3");
  myServer.write("/weather3");
  myServer.write(zero);
}

public void capOne(int theValue) {
  println("/live/broadcast/1");
  myServer.write("/live/broadcast/1");
  myServer.write(zero);
}

public void capTwo(int theValue) {
  println("/live/broadcast/2");
  myServer.write("/live/broadcast/2");
  myServer.write(zero);
}

public void capThree(int theValue) {
  println("/live/broadcast/3");
  myServer.write("/live/broadcast/3");
  myServer.write(zero);
}
