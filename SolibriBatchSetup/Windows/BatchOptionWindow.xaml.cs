using Microsoft.Win32;
using SolibriBatchSetup.Schema;
using SolibriBatchSetup.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace SolibriBatchSetup
{
    /// <summary>
    /// Interaction logic for BatchOptionWindow.xaml
    /// </summary>
    public partial class BatchOptionWindow : Window
    {
        private AutorunSettings settings = new AutorunSettings();
        private string batchOptionFile = "";

        private SolibriProperties selectedSolibri = new SolibriProperties();
        private RemoteMachine selectedRemoteMachine = new RemoteMachine();
        private List<SolibriProperties> tempSolibriOptions = new List<SolibriProperties>();
        private List<RemoteMachine> tempRemoteMachines = new List<RemoteMachine>();

        public AutorunSettings Settings { get { return settings; } set { settings = value; } }

        public BatchOptionWindow(AutorunSettings aSetting, string optionFile)
        {
            settings = aSetting;
            batchOptionFile = optionFile;

            StoreOriginalSettings();
            InitializeComponent();
        }

        private void StoreOriginalSettings()
        {
            try
            {
                foreach (SolibriProperties sp in settings.Options.SolibriOptions)
                {
                    SolibriProperties sProperties = new SolibriProperties(sp.VersionNumber, sp.ExeFile);
                    tempSolibriOptions.Add(sProperties);
                }
                selectedSolibri = new SolibriProperties(settings.SolibriSetup.VersionNumber, settings.SolibriSetup.ExeFile);

                foreach (RemoteMachine rm in settings.Options.RemoteOptions)
                {
                    RemoteMachine rMachine = new RemoteMachine(rm.Location, rm.ComputerName, rm.DirectoryName);
                    tempRemoteMachines.Add(rMachine);
                }
                selectedRemoteMachine = new RemoteMachine(settings.RemoteSetup.Location, settings.RemoteSetup.ComputerName, settings.RemoteSetup.DirectoryName);
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                this.DataContext = settings;
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }

        private void buttonExe_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                DataGridRow row = DataGridUtils.FindVisualParent<DataGridRow>(e.OriginalSource as UIElement);
                if (null != row)
                {
                    SolibriProperties sp = row.Item as SolibriProperties;
                    if (null != sp)
                    {
                        OpenFileDialog openDialog = new OpenFileDialog();
                        openDialog.Title = "Specify an excutable of Solibri";
                        openDialog.Multiselect = false;
                        openDialog.RestoreDirectory = true;
                        openDialog.Filter = "Application (*.exe)|*.exe";
                        if ((bool)openDialog.ShowDialog())
                        {
                            string exeFile = openDialog.FileName;

                            int index = settings.Options.SolibriOptions.IndexOf(sp);
                            this.Settings.Options.SolibriOptions[index].ExeFile = exeFile;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }

        private void buttonAddSolibri_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                SolibriProperties sp = new SolibriProperties("New Version", "");
                this.Settings.Options.SolibriOptions.Add(sp);
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }

        private void buttonDeleteSolibri_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (null != dataGridSolibri.SelectedItems && dataGridSolibri.SelectedItems.Count > 0)
                {
                    for (int i = dataGridSolibri.SelectedItems.Count - 1; i > -1; i--)
                    {
                        SolibriProperties sp = dataGridSolibri.SelectedItems[i] as SolibriProperties;
                        this.Settings.Options.SolibriOptions.Remove(sp);
                    }
                }
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }

        private void buttonAddRemote_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                RemoteMachine rm = new RemoteMachine("New Office", "New Computer", "New Directory");
                this.Settings.Options.RemoteOptions.Add(rm);
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }

        private void buttonDeleteRemote_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (null != dataGridRemote.SelectedItems && dataGridRemote.SelectedItems.Count > 0)
                {
                    for (int i = dataGridRemote.SelectedItems.Count - 1; i > -1; i--)
                    {
                        RemoteMachine rm = dataGridRemote.SelectedItems[i] as RemoteMachine;
                        this.Settings.Options.RemoteOptions.Remove(rm);
                    }
                }
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }

        private void buttonApply_Click(object sender, RoutedEventArgs e)
        {
            SettingUtils.WriteSettings(batchOptionFile, settings.Options);
            this.DialogResult = true;
        }

        private void buttonCancel_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
            this.Close();
        }

        public void RestoreSettings()
        {
            try
            {
                settings.Options.SolibriOptions.Clear();
                foreach (SolibriProperties sp in tempSolibriOptions)
                {
                    settings.Options.SolibriOptions.Add(sp);
                }
                var solibriFound = from solibri in settings.Options.SolibriOptions where solibri.VersionNumber == selectedSolibri.VersionNumber select solibri;
                if (solibriFound.Count() > 0)
                {
                    settings.SolibriSetup = solibriFound.First();
                }

                settings.Options.RemoteOptions.Clear();
                foreach (RemoteMachine rm in tempRemoteMachines)
                {
                    settings.Options.RemoteOptions.Add(rm);
                }
                var remoteFound = from remote in settings.Options.RemoteOptions where remote.ComputerName == selectedRemoteMachine.ComputerName select remote;
                if (remoteFound.Count() > 0)
                {
                    settings.RemoteSetup = remoteFound.First();
                }
              
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }
        

        

       


    }
}
