<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="w3-container  w3-dark-grey w3-center w3-text-white w3-padding-32" id="about">
        <h1><b>Nilai University</b></h1>
        <img src="/img/Nilai-University.jpg" alt="Me" class="w3-image w3-padding-32" width="600">
        <div id="about" runat="server" class="w3-content w3-justify" style="max-width: 600px">
            <h4>About Us</h4>
            <p>
                Nilai University received full 'university' status and is a private university in Nilai, Seremban District, Negeri Sembilan, Malaysia. The medium of instruction is English. Nilai U has three faculties offering diploma, bachelor's degree, master's degree and PhD programmes. 
            </p>
            <hr class="w3-opacity">
            <p>Mail: campus@nilai.com</p>
            <p>Phone: +60 6-850 2338</p>
            <p>Address: No 1, Persiaran Universiti, Putra Nilai, 71800 Nilai, Negeri Sembilan, Malaysia</p>
            <hr class="w3-opacity">

            <!-- Contact section -->
            <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
                <div class="w3-content" style="max-width: 600px">
                    <h4 class="w3-center" id="contactus" runat="server"><b>Contact Us</b></h4>
                    <p>Do you want me to contact you? Fill out the form and fill me in with the details :) We love meeting new people!</p>
                    <form action="/action_page.php" target="_blank">
                        <div class="w3-section">
                            <label>Name</label>
                            <input class="w3-input w3-border" type="text" name="Name" required>
                        </div>
                        <div class="w3-section">
                            <label>Email</label>
                            <input class="w3-input w3-border" type="text" name="Email" required>
                        </div>
                        <div class="w3-section">
                            <label>Message</label>
                            <input class="w3-input w3-border" type="text" name="Message" required>
                        </div>
                        <button type="submit" class="w3-button w3-block w3-black w3-margin-bottom">Send Message</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

