using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Common;
using System.Transactions;

/// <summary>
/// Summary description for ClsBanner
/// </summary>
public class ClsBanner
{
	public ClsBanner()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet GetBannerDetail(int Action, int BannerId)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("GetBanner");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@BannerId", DbType.Int32, BannerId);


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



    public bool SaveUpdateBanner(int Action, int BannerId, string BannerText, string Image, int SortOrder, int Status, string CreatedOn, string CreatedBy, string UpdatedOn, string UpdatedBy, string BannerTag, string BannerTitle)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateBanner");

        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@BannerId", DbType.Int32, BannerId);
        db.AddInParameter(cmd, "@BannerText", DbType.String, BannerText);
        db.AddInParameter(cmd, "@Image", DbType.String, Image);
        db.AddInParameter(cmd, "@SortOrder", DbType.Int32, SortOrder);
        db.AddInParameter(cmd, "@Status", DbType.Int32, Status);
        db.AddInParameter(cmd, "@CreatedOn", DbType.String, CreatedOn);
        db.AddInParameter(cmd, "@CreatedBy", DbType.String, CreatedBy);
        db.AddInParameter(cmd, "@UpdatedOn", DbType.String, UpdatedOn);
        db.AddInParameter(cmd, "@UpdatedBy", DbType.String, UpdatedBy);
        db.AddInParameter(cmd, "@BannerTag", DbType.String, BannerTag);
        db.AddInParameter(cmd, "@BannerTitle", DbType.String, BannerTitle);
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