namespace Decklist_Visualizer
{
  partial class Form1
  {
    /// <summary>
    /// Erforderliche Designervariable.
    /// </summary>
    private System.ComponentModel.IContainer components = null;

    /// <summary>
    /// Verwendete Ressourcen bereinigen.
    /// </summary>
    /// <param name="disposing">True, wenn verwaltete Ressourcen gelöscht werden sollen; andernfalls False.</param>
    protected override void Dispose(bool disposing)
    {
      if (disposing && (components != null))
      {
        components.Dispose();
      }
      base.Dispose(disposing);
    }

    #region Vom Windows Form-Designer generierter Code

    /// <summary>
    /// Erforderliche Methode für die Designerunterstützung.
    /// Der Inhalt der Methode darf nicht mit dem Code-Editor geändert werden.
    /// </summary>
    private void InitializeComponent()
    {
      this.LbxKarten = new System.Windows.Forms.ListBox();
      this.button1 = new System.Windows.Forms.Button();
      this.LbxDeckAuswahl = new System.Windows.Forms.ListBox();
      this.label1 = new System.Windows.Forms.Label();
      this.label2 = new System.Windows.Forms.Label();
      this.txtTyp = new System.Windows.Forms.TextBox();
      this.label3 = new System.Windows.Forms.Label();
      this.label4 = new System.Windows.Forms.Label();
      this.SuspendLayout();
      // 
      // LbxKarten
      // 
      this.LbxKarten.BackColor = System.Drawing.Color.White;
      this.LbxKarten.FormattingEnabled = true;
      this.LbxKarten.Location = new System.Drawing.Point(184, 92);
      this.LbxKarten.Name = "LbxKarten";
      this.LbxKarten.Size = new System.Drawing.Size(148, 134);
      this.LbxKarten.TabIndex = 1;
      this.LbxKarten.SelectedIndexChanged += new System.EventHandler(this.LbxKarten_SelectedIndexChanged);
      // 
      // button1
      // 
      this.button1.BackColor = System.Drawing.Color.Red;
      this.button1.ForeColor = System.Drawing.Color.Black;
      this.button1.Location = new System.Drawing.Point(43, 199);
      this.button1.Name = "button1";
      this.button1.Size = new System.Drawing.Size(70, 35);
      this.button1.TabIndex = 10;
      this.button1.Text = "Beenden";
      this.button1.UseVisualStyleBackColor = false;
      this.button1.Click += new System.EventHandler(this.button1_Click);
      // 
      // LbxDeckAuswahl
      // 
      this.LbxDeckAuswahl.FormattingEnabled = true;
      this.LbxDeckAuswahl.Location = new System.Drawing.Point(43, 92);
      this.LbxDeckAuswahl.Name = "LbxDeckAuswahl";
      this.LbxDeckAuswahl.Size = new System.Drawing.Size(120, 95);
      this.LbxDeckAuswahl.TabIndex = 19;
      this.LbxDeckAuswahl.SelectedIndexChanged += new System.EventHandler(this.LbxDeckAuswahl_SelectedIndexChanged);
      // 
      // label1
      // 
      this.label1.AutoSize = true;
      this.label1.BackColor = System.Drawing.Color.RoyalBlue;
      this.label1.ForeColor = System.Drawing.Color.Aqua;
      this.label1.Location = new System.Drawing.Point(181, 60);
      this.label1.Name = "label1";
      this.label1.Size = new System.Drawing.Size(38, 13);
      this.label1.TabIndex = 20;
      this.label1.Text = "Karten";
      // 
      // label2
      // 
      this.label2.AutoSize = true;
      this.label2.BackColor = System.Drawing.Color.RoyalBlue;
      this.label2.ForeColor = System.Drawing.Color.Aqua;
      this.label2.Location = new System.Drawing.Point(40, 60);
      this.label2.Name = "label2";
      this.label2.Size = new System.Drawing.Size(33, 13);
      this.label2.TabIndex = 21;
      this.label2.Text = "Deck";
      // 
      // txtTyp
      // 
      this.txtTyp.Location = new System.Drawing.Point(356, 92);
      this.txtTyp.Name = "txtTyp";
      this.txtTyp.Size = new System.Drawing.Size(100, 20);
      this.txtTyp.TabIndex = 22;
      // 
      // label3
      // 
      this.label3.AutoSize = true;
      this.label3.BackColor = System.Drawing.Color.RoyalBlue;
      this.label3.ForeColor = System.Drawing.Color.Aqua;
      this.label3.Location = new System.Drawing.Point(353, 60);
      this.label3.Name = "label3";
      this.label3.Size = new System.Drawing.Size(52, 13);
      this.label3.TabIndex = 23;
      this.label3.Text = "Kartentyp";
      // 
      // label4
      // 
      this.label4.AutoSize = true;
      this.label4.BackColor = System.Drawing.Color.RoyalBlue;
      this.label4.Font = new System.Drawing.Font("Arial", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
      this.label4.ForeColor = System.Drawing.Color.Aqua;
      this.label4.Location = new System.Drawing.Point(36, 9);
      this.label4.Name = "label4";
      this.label4.Size = new System.Drawing.Size(257, 32);
      this.label4.TabIndex = 24;
      this.label4.Text = "Decklist Visualizer";
      // 
      // Form1
      // 
      this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
      this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
      this.BackColor = System.Drawing.Color.Green;
      this.ClientSize = new System.Drawing.Size(494, 327);
      this.Controls.Add(this.label4);
      this.Controls.Add(this.label3);
      this.Controls.Add(this.txtTyp);
      this.Controls.Add(this.label2);
      this.Controls.Add(this.label1);
      this.Controls.Add(this.LbxDeckAuswahl);
      this.Controls.Add(this.button1);
      this.Controls.Add(this.LbxKarten);
      this.Name = "Form1";
      this.Text = "Decklist_Visualizer";
      this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
      this.Load += new System.EventHandler(this.Form1_Load);
      this.ResumeLayout(false);
      this.PerformLayout();

    }

    #endregion

    private System.Windows.Forms.ListBox LbxKarten;
    private System.Windows.Forms.Button button1;
    private System.Windows.Forms.ListBox LbxDeckAuswahl;
    private System.Windows.Forms.Label label1;
    private System.Windows.Forms.Label label2;
    private System.Windows.Forms.TextBox txtTyp;
    private System.Windows.Forms.Label label3;
    private System.Windows.Forms.Label label4;
  }
}

