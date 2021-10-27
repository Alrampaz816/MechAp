using System.ComponentModel;
using Welcome.ViewModels;
using Xamarin.Forms;

namespace Welcome.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}