// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.dianxinos.appupdate.DownloadService;

public class ja
    implements jw
{

    final DownloadService a;
    private final Uri b = Uri.parse("content://telephony/carriers/preferapn");

    public ja(DownloadService downloadservice)
    {
        a = downloadservice;
        super();
    }

    public long a()
    {
        return System.currentTimeMillis();
    }

    public Integer b()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)a.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            return null;
        } else
        {
            return Integer.valueOf(networkinfo.getType());
        }
    }

    public boolean c()
    {
        return ((TelephonyManager)a.getSystemService("phone")).isNetworkRoaming();
    }

    public Long d()
    {
        return null;
    }

    public Long e()
    {
        return null;
    }

    public boolean f()
    {
        int i;
        try
        {
            i = android.provider.Settings.Secure.getInt(a.getApplicationContext().getContentResolver(), "data_roaming");
            if (DownloadService.a())
            {
                Log.d("DownloadService", (new StringBuilder()).append("Allow roaming:").append(i).toString());
            }
        }
        catch (android.provider.Settings.SettingNotFoundException settingnotfoundexception)
        {
            settingnotfoundexception.printStackTrace();
            return true;
        }
        return i != 1;
    }

    public jx g()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)a.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || networkinfo.getType() != 0)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        Cursor cursor1 = a.getContentResolver().query(b, null, null, null, null);
        Cursor cursor;
        cursor = cursor1;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        jx jx1;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_141;
        }
        jx1 = new jx(cursor.getString(cursor.getColumnIndex("proxy")), cursor.getInt(cursor.getColumnIndex("port")), cursor.getString(cursor.getColumnIndex("user")), cursor.getString(cursor.getColumnIndex("password")));
        if (cursor != null)
        {
            cursor.close();
        }
        return jx1;
        if (cursor != null)
        {
            cursor.close();
        }
_L1:
        return null;
        Exception exception1;
        exception1;
        cursor = null;
_L4:
        exception1.printStackTrace();
        if (cursor != null)
        {
            cursor.close();
        }
          goto _L1
        Exception exception;
        exception;
        cursor = null;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
        exception1;
          goto _L4
    }
}
