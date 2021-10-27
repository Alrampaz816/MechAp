using System;
using System.Collections.Generic;
using System.ComponentModel;
using Welcome.Models;
using Welcome.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Welcome.Views
{
    public partial class NewItemPage : ContentPage
    {
        public Item Item { get; set; }

        public NewItemPage()
        {
            InitializeComponent();
            BindingContext = new NewItemViewModel();
        }
    }
}