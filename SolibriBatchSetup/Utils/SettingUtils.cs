using SolibriBatchSetup.Schema;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;

namespace SolibriBatchSetup.Utils
{
    public static class SettingUtils
    {
        public static BatchOptions ReadSettings(string xmlFile)
        {
            BatchOptions batchOptions = new BatchOptions();
            try
            {
                if (File.Exists(xmlFile))
                {
                    XmlSerializer serializer = new XmlSerializer(typeof(BatchOptions));
                    using (FileStream fs = new FileStream(xmlFile, FileMode.Open))
                    {
                        XmlReader reader = XmlReader.Create(fs);
                        if (serializer.CanDeserialize(reader))
                        {
                            batchOptions = (BatchOptions)serializer.Deserialize(reader);
                        }
                        fs.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
            return batchOptions;
        }

        public static void WriteSettings(string xmlFile, BatchOptions option)
        {
            try
            {
                using (FileStream fs = new FileStream(xmlFile, FileMode.Create))
                {
                    XmlSerializer serializer = new XmlSerializer(typeof(BatchOptions));
                    serializer.Serialize(fs, option);
                    fs.Close();
                }
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }
    }

    
}
