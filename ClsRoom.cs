using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Transactions;
using System.Web;
using System.Web.Services.Description;
/// <summary>
/// Summary description for ClsRoom
/// </summary>
public class ClsRoom
{
	public ClsRoom()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet GetRoom(int Action, int ServiceId,int Status)
    {

        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("GetService");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@ServiceId", DbType.Int32, ServiceId);
        db.AddInParameter(cmd, "@Status", DbType.Int32, Status);

        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                DataSet ds = db.ExecuteDataSet(cmd);
                scope.Complete();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    return ds;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }


    }

    public bool SaveUpdateRoom(int Action, string Title, string SmallDescription, string LongDescription,decimal Price, string Guest, string Image, int ServiceId, string CreatedOn, string CreatedBy, int Status)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateService");

        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@ServiceId", DbType.Int32, ServiceId);
        db.AddInParameter(cmd, "@Title", DbType.String, Title);
        db.AddInParameter(cmd, "@SmallDescription", DbType.String, SmallDescription);
        db.AddInParameter(cmd, "@LongDescription", DbType.String, LongDescription);
        db.AddInParameter(cmd, "@Price", DbType.Decimal, Price);
        db.AddInParameter(cmd, "@Guests", DbType.String, Guest);
        db.AddInParameter(cmd, "@Image", DbType.String, Image);
        db.AddInParameter(cmd, "@CreatedOn", DbType.String, CreatedOn);
        db.AddInParameter(cmd, "@CreatedBy", DbType.String, CreatedBy);
        db.AddInParameter(cmd, "@Status", DbType.Int32, Status);

        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                int _Result = db.ExecuteNonQuery(cmd);
                scope.Complete();
                if (_Result > 0)
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
                return false;
            }
            finally
            {
                cmd.Dispose();
            }
        }
    }

     
}