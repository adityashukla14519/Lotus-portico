using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Transactions;
using System.Data;


/// <summary>
/// Summary description for GetGalleryCategory
/// </summary>
public class GetGalleryCategory
{
	public GetGalleryCategory()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet GetCategory(int Action, int CategoryId)
    {
        Database ObjDB = DatabaseFactory.CreateDatabase();
        DbCommand ObjCommand = ObjDB.GetStoredProcCommand("GetCategory");

        ObjDB.AddInParameter(ObjCommand, "@Action", DbType.Int32, Action);

        ObjDB.AddInParameter(ObjCommand, "@CategoryId", DbType.Int32, CategoryId);
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

    public bool SaveUpdateGalleryCategory(int Action, string CategoryName, int CategoryId)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateCategory");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@CategoryName", DbType.String , CategoryName);
        db.AddInParameter(cmd, "@CategoryId", DbType.Int32, CategoryId);
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