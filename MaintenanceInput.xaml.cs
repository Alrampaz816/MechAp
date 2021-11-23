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
    public partial class MaintenanceInput : ContentPage
    {

        public MaintenanceInput()
        {
            InitializeComponent();
        }

        private void MyGarageBtn_Clicked(object sender, EventArgs e)
        {
            App.Current.MainPage = new MyGarage();
        }

        private void VehicleRegBtn_Clicked(object sender, EventArgs e)
        {
            App.Current.MainPage = new VehicleRegistration();
        }

        protected override bool OnBackButtonPressed()
        {
            App.Current.MainPage = new MyGarage();
            App.Current.MainPage = new VehicleRegistration();
            return base.OnBackButtonPressed();
        }

    }
}
