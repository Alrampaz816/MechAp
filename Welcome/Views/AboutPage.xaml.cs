using System;
using System.ComponentModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Welcome.Views
{
    public partial class AboutPage : ContentPage
    {
        public AboutPage()
        {
            InitializeComponent();
        }
        int count = 0;
        void Handle_Clicked(object sender, System.EventArgs e)
        {
            count++;
            ((Button)sender).Text = $"You clicked {count} times.";
        }
    }
}