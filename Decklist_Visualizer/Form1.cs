using System;
using System.Data.OleDb;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Decklist_Visualizer
{
  public partial class Form1 : Form
  {
    OleDbConnection ConnectDecklist = new OleDbConnection();
    public Form1()
    {
      InitializeComponent();
    }
    private void button1_Click(object sender, EventArgs e)
    {
      Close();
    }
    private void Form1_FormClosing(object sender, FormClosingEventArgs e)
    {
      if (ConnectDecklist.State == ConnectionState.Open) ConnectDecklist.Close();
    }
    private void Form1_Load(object sender, EventArgs e)
    {
      //Datenabank Verbindung herstellen
      ConnectDecklist.ConnectionString = "Provider = MSOLEDBSQL;" +
                                        "Server=bmWP1;" +
                                        "Database=Decklist_Visualizer;" +
                                        "Trusted_Connection=yes";
      ConnectDecklist.Open();
      //DeckAuswahl füllen
      //DatenBank - kommando erstellen
      OleDbCommand Deckcmd = new OleDbCommand();
      Deckcmd.Connection = ConnectDecklist;
      Deckcmd.CommandText = "select * from Deck";

      //DatenBank-kommando ausführen
      OleDbDataReader DlReader = Deckcmd.ExecuteReader();

      //Ausgabe 
      while (DlReader.Read())
      {
        LbxDeckAuswahl.Items.Add(DlReader["DName"]);
      }
    }
    private void LbxDeckAuswahl_SelectedIndexChanged(object sender, EventArgs e)
    {
      LbxKarten.Items.Clear();

      string Deckname = LbxDeckAuswahl.SelectedItem.ToString();

      OleDbCommand Deckcmd = new OleDbCommand();
      Deckcmd.Connection = ConnectDecklist;
      //Deckcmd.CommandText = String.Format("select * from Deck where DName='{0}'", Deckname);
      if (LbxDeckAuswahl.SelectedIndex == 0)
      {
        Deckcmd.CommandText = String.Format("SELECT karten.KName FROM  Karten, Deck, sindIn WHERE fk_DeckId = 1 AND fk_KartenId = KartenId AND fk_DeckId = DeckId ORDER BY sindIn.fk_KartenId", Deckname);

        //DatenBank-kommando ausführen
        OleDbDataReader DlReader = Deckcmd.ExecuteReader();
        while (DlReader.Read())
        {
          string KN = Convert.ToString(DlReader["KName"]);
          LbxKarten.Items.Add(KN);
        }
      }
      //if (DlReader.Read()) DeckId = Convert.ToInt32(DlReader["DeckId"]);
      //MessageBox.Show(String.Format("Deckname={0}\nDeckId={1}", Deckname, DeckId));
      //}
      //private void LbxKarten_SelectedIndexChanged(object sender, EventArgs e)
      //{
      //  int DeckId = 0;
      //  string Deckname = LbxDeckAuswahl.SelectedItem.ToString();
      //  OleDbCommand Deckcmd = new OleDbCommand();
      //  Deckcmd.Connection = ConnectDecklist;
      //  Deckcmd.CommandText = String.Format("SELECT karten.KName FROM  Karten, Deck, sindIn WHERE fk_DeckId = 1 AND fk_KartenId = KartenId AND fk_DeckId = DeckId ORDER BY sindIn.fk_KartenId", Deckname);
      //  OleDbDataReader DlReader = Deckcmd.ExecuteReader();
      //  if (DlReader.Read()) DeckId = Convert.ToInt32(DlReader["DeckId = 1"]);

      //  //SELECT befehl
      //  //        SELECT karten.KName FROM  Karten, Deck, sindIn
      //  //WHERE fk_DeckId = 1 AND fk_KartenId = KartenId AND fk_DeckId = DeckId
      //  //ORDER BY sindIn.fk_KartenId
      //}
    }
    private void LbxKarten_SelectedIndexChanged(object sender, EventArgs e)
    {
      txtTyp.Clear();
      
      string Typname = LbxKarten.SelectedItem.ToString();
      OleDbCommand Deckcmd = new OleDbCommand();
      Deckcmd.Connection = ConnectDecklist;
      //Deckcmd.CommandText = String.Format("select * from Deck where DName='{0}'", Deckname);

      if (LbxKarten.SelectedIndex == 0)
      {
        Deckcmd.CommandText = String.Format("SELECT typ.TName FROM  Karten, Typ WHERE TypId = 1", Typname);
        //DatenBank-kommando ausführen
        OleDbDataReader DlReader = Deckcmd.ExecuteReader();
        while (DlReader.Read())
        {
          //string KN = Convert.ToString(DlReader["TName"]);
          txtTyp.Text = Convert.ToString(DlReader["TName"]);
        }
      }
      if (LbxKarten.SelectedIndex >= 1 && LbxKarten.SelectedIndex <= 32)
      {
        Deckcmd.CommandText = String.Format("SELECT typ.TName FROM  Karten, Typ WHERE TypId = 2", Typname);
        //DatenBank-kommando ausführen
        OleDbDataReader DlReader = Deckcmd.ExecuteReader();
        while (DlReader.Read())
        {
          //string KN = Convert.ToString(DlReader["TName"]);
          txtTyp.Text = Convert.ToString(DlReader["TName"]);
        }
      }
        if (LbxKarten.SelectedIndex >= 33 && LbxKarten.SelectedIndex <= 37)
        {
          Deckcmd.CommandText = String.Format("SELECT typ.TName FROM  Karten, Typ WHERE TypId = 3", Typname);
          //DatenBank-kommando ausführen
          OleDbDataReader DlReader = Deckcmd.ExecuteReader();
          while (DlReader.Read())
          {
            //string KN = Convert.ToString(DlReader["TName"]);
            txtTyp.Text = Convert.ToString(DlReader["TName"]);
          }
        }
      if (LbxKarten.SelectedIndex >= 38 && LbxKarten.SelectedIndex <= 41)
      {
        Deckcmd.CommandText = String.Format("SELECT typ.TName FROM  Karten, Typ WHERE TypId = 4", Typname);
        //DatenBank-kommando ausführen
        OleDbDataReader DlReader = Deckcmd.ExecuteReader();
        while (DlReader.Read())
        {
          //string KN = Convert.ToString(DlReader["TName"]);
          txtTyp.Text = Convert.ToString(DlReader["TName"]);
        }
      }
      if (LbxKarten.SelectedIndex >= 42 && LbxKarten.SelectedIndex <= 45)
      {
        Deckcmd.CommandText = String.Format("SELECT typ.TName FROM  Karten, Typ WHERE TypId = 5", Typname);
        //DatenBank-kommando ausführen
        OleDbDataReader DlReader = Deckcmd.ExecuteReader();
        while (DlReader.Read())
        {
          //string KN = Convert.ToString(DlReader["TName"]);
          txtTyp.Text = Convert.ToString(DlReader["TName"]);
        }
      }
      if (LbxKarten.SelectedIndex >= 46 && LbxKarten.SelectedIndex <= 61)
      {
        Deckcmd.CommandText = String.Format("SELECT typ.TName FROM  Karten, Typ WHERE TypId = 6", Typname);
        //DatenBank-kommando ausführen
        OleDbDataReader DlReader = Deckcmd.ExecuteReader();
        while (DlReader.Read())
        {
          //string KN = Convert.ToString(DlReader["TName"]);
          txtTyp.Text = Convert.ToString(DlReader["TName"]);
        }
      }
      if (LbxKarten.SelectedIndex >= 62 && LbxKarten.SelectedIndex <= 64)
      {
        Deckcmd.CommandText = String.Format("SELECT typ.TName FROM  Karten, Typ WHERE TypId = 7", Typname);
        //DatenBank-kommando ausführen
        OleDbDataReader DlReader = Deckcmd.ExecuteReader();
        while (DlReader.Read())
        {
          //string KN = Convert.ToString(DlReader["TName"]);
          txtTyp.Text = Convert.ToString(DlReader["TName"]);
        }
      }
      if (LbxKarten.SelectedIndex >= 65 && LbxKarten.SelectedIndex <= 95)
      {
        Deckcmd.CommandText = String.Format("SELECT typ.TName FROM  Karten, Typ WHERE TypId = 8", Typname);
        //DatenBank-kommando ausführen
        OleDbDataReader DlReader = Deckcmd.ExecuteReader();
        while (DlReader.Read())
        {
          //string KN = Convert.ToString(DlReader["TName"]);
          txtTyp.Text = Convert.ToString(DlReader["TName"]);
        }
      }
    }
  }
}

