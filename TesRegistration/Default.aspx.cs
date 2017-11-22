using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace TesRegistration
{
    public partial class _Default : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void clear()
        {
            txt_id.Text = "";
            txt_name.Text = "";
            txt_sec.Text = "";
            txt_seat.Text = "";

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            bool stat = false;

            lbl_error.Visible = false;

            try
            {
                if (txt_id.Text != "")
                {
                    txt_name.Text = "";
                    txt_sec.Text = "";
                    txt_seat.Text = "";

                    conn.Open();

                    MySqlCommand cmd = new MySqlCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM tes_registration.staff WHERE idstaff = '" + txt_id.Text + "'";
                    cmd.Connection = conn;

                    MySqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        if (dr.HasRows == true)
                        {
                            txt_name.Text = dr["name"].ToString();
                            txt_sec.Text = dr["section"].ToString();
                            txt_seat.Text = dr["seat"].ToString();

                            stat = true;
                        }
                    }

                    if (stat == false)
                    {
                        lbl_error.Text = "ID not found. Please insert details below.";
                        lbl_error.Visible = true;
                        txt_name.Enabled = true;
                        txt_sec.Enabled = true;
                        txt_seat.Enabled = true;
                    }
                    else
                    {
                        txt_name.Enabled = false;
                        txt_sec.Enabled = false;
                        txt_seat.Enabled = false;
                    }
                }
                else
                {
                    lbl_error.Text = "Please Insert Staff ID!";
                    lbl_error.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            bool stat = false;
            /*---------CHECK IC--------------*/
            try
            {
                conn.Open();

                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM tes_registration.staff WHERE idstaff = '" + txt_id.Text + "'";
                cmd.Connection = conn;

                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (dr.HasRows)
                    {
                        stat = true;
                    }
                }

            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }

            /*---------------CHECK ATTENDANCE------------*/

            bool stat_att = false;

            try
            {
                conn.Open();

                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM tes_registration.staff WHERE idstaff = '" + txt_id.Text + "' AND checkout_dt IS NOT NULL";
                cmd.Connection = conn;

                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    if (dr.HasRows)
                    {
                        stat_att = true;
                    }
                }
            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }

            /*----------INSERT/UPDATE DETAILS-------------*/
            try
            {
                conn.Open();

                if (stat == false)
                {
                    if (txt_name.Text != "" && txt_sec.Text != "")
                    {
                        MySqlCommand cmd4 = new MySqlCommand();
                        cmd4.CommandType = CommandType.Text;
                        cmd4.CommandText = "INSERT INTO staff (idstaff, name, section, seat, checkout_dt, luckydraw_st) VALUES ('" + txt_id.Text + "','" + txt_name.Text + "','" + txt_sec.Text + "', '" + txt_seat.Text + "', NOW(), 0)";
                        cmd4.Connection = conn;

                        cmd4.ExecuteNonQuery();
                        lbl_error.Text = "SUCCESSFULLY CHECKED IN! ENJOY THE EVENT!";
                        lbl_error.Visible = true;
                        lbl_error.ForeColor = System.Drawing.Color.Blue;
                        clear();
                    }
                    else
                    {
                        if (txt_name.Text == "" && txt_sec.Text != "") { lbl_error.Text = "Please Insert Name!"; }
                        if (txt_name.Text != "" && txt_sec.Text == "") { lbl_error.Text = "Please Insert Section!"; }
                        if (txt_name.Text == "" && txt_sec.Text == "") { lbl_error.Text = "Please Insert Name & Section!"; }

                        lbl_error.Visible = true;
                    }
                }
                else
                {
                    if (stat_att == true)
                    {
                        lbl_error.Text = "YOU ALREADY CHECKED IN!";
                        lbl_error.Visible = true;
                        lbl_error.ForeColor = System.Drawing.Color.Red;
                        clear();
                    }
                    else
                    {
                        MySqlCommand cmd2 = new MySqlCommand();
                        cmd2.CommandType = CommandType.Text;
                        cmd2.CommandText = "UPDATE staff SET name='" + txt_name.Text + "', section='" + txt_sec.Text + "', checkout_dt=NOW() WHERE idstaff = '" + txt_id.Text + "'";
                        cmd2.Connection = conn;

                        cmd2.ExecuteNonQuery();

                        lbl_error.Text = "SUCCESSFULLY CHECKED IN! ENJOY THE EVENT!";
                        lbl_error.Visible = true;
                        lbl_error.ForeColor = System.Drawing.Color.Blue;
                        clear();
                    }

                }

            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/luckydraw_main.aspx");
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                MySqlCommand cmd3 = new MySqlCommand();
                cmd3.CommandType = CommandType.Text;
                cmd3.CommandText = "UPDATE staff SET checkout_dt=NULL, luckydraw_st = 0";
                cmd3.Connection = conn;

                cmd3.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
            }
        }
}
}