using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Transactions;
using System.Data.Common;
using System.Data;
using System.IO;

/// <summary>
/// Summary description for ClsTestimonial
/// </summary>
public class ClsTestimonial
{
	public ClsTestimonial()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet GetTestimonial(int Action, int TestimonialId)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("GetTestimonial");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@TestimonialId", DbType.Int32, TestimonialId);


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

    public bool SaveTestimonials(int Action, string Name, int TestimonialId, string Description, string Image, string CreatedOn, string UpdatedOn)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateTestimonial");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@Name", DbType.String, Name);
        db.AddInParameter(cmd, "@TestimonialId", DbType.Int32, TestimonialId);
        
        db.AddInParameter(cmd, "@Description", DbType.String, Description);
        db.AddInParameter(cmd, "@Image", DbType.String, Image);
        db.AddInParameter(cmd, "@CreatedOn", DbType.String, CreatedOn);
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
        }
    }
}