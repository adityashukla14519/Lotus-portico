using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Transactions;
using System.IO;

/// <summary>
/// Summary description for ClsGallery
/// </summary>
public class ClsGallery
{
	public ClsGallery()
	{
		//
		// TODO: Add constructor logic here
		//
	}


    public DataSet GetGallery(int Action, int ImageId)
    {
        Database ObjDB = DatabaseFactory.CreateDatabase();
        DbCommand ObjCommand = ObjDB.GetStoredProcCommand("GetGallery");

        ObjDB.AddInParameter(ObjCommand, "@Action", DbType.Int32, Action);

        ObjDB.AddInParameter(ObjCommand, "@ImageId", DbType.Int32, ImageId);
     
        DataSet DS;
        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                DS = ObjDB.ExecuteDataSet(ObjCommand);
                if (DS.Tables[0].Rows.Count <= 0)
                {
                    return null;
                }
                else
                {
                    return DS;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
            finally
            {
                ObjCommand.Dispose();
            }
        }
    }


    public bool SaveUpdateGalleryPhoto(int Action, int ImageId, int CategoryId,string Image, string Description, string CreatedBy, string UpdatedOn)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateGallery");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@ImageId", DbType.Int32, ImageId);
        db.AddInParameter(cmd, "@CategoryId", DbType.Int32, CategoryId);
       

        db.AddInParameter(cmd, "@Image", DbType.String, Image);
        db.AddInParameter(cmd, "@Description", DbType.String, Description);
        db.AddInParameter(cmd, "@CreatedBy", DbType.String, CreatedBy);
        db.AddInParameter(cmd, "@UpdatedOn", DbType.String, UpdatedOn);

        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                int s = db.ExecuteNonQuery(cmd);
                scope.Complete();

                if (s > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                cmd.Dispose();
            }
        }
    }

}