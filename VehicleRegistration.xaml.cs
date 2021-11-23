using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Xamarin.Essentials;
using System.Windows.Input;

namespace MechAp
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class VehicleRegistration : ContentPage
    {

        public VehicleRegistration()
        {
            InitializeComponent();
        }

        private void MyGarageBtn_Clicked(object sender, EventArgs e)
        {
            App.Current.MainPage = new MyGarage();
        }

        private void MaintenceInputBtn_Clicked(object sender, EventArgs e)
        {
            App.Current.MainPage = new MaintenanceInput();
        }

        protected override bool OnBackButtonPressed()
        {
            App.Current.MainPage = new MyGarage();
            App.Current.MainPage = new MaintenanceInput();
            return base.OnBackButtonPressed();
        }
    }
}
