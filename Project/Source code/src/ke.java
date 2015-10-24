// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;

class ke
    implements jy
{

    final ka a;
    private final Uri b = Uri.parse("content://telephony/carriers/preferapn");

    ke(ka ka1)
    {
        a = ka1;
        super();
    }

    public jx a()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)ka.d(a).getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null || networkinfo.getType() != 0) goto _L2; else goto _L1
_L1:
        Cursor cursor1 = ka.d(a).getContentResolver().query(b, null, null, null, null);
        Cursor cursor = cursor1;
        if (cursor == null) goto _L4; else goto _L3
_L3:
        if (!cursor.moveToFirst()) goto _L4; else goto _L5
_L5:
        jx jx1 = new jx(cursor.getString(cursor.getColumnIndex("proxy")), cursor.getInt(cursor.getColumnIndex("port")), cursor.getString(cursor.getColumnIndex("user")), cursor.getString(cursor.getColumnIndex("password")));
        if (cursor != null)
        {
            cursor.close();
        }
        return jx1;
        Exception exception1;
        exception1;
        cursor = null;
_L9:
        exception1.printStackTrace();
        if (cursor == null) goto _L2; else goto _L6
_L6:
        cursor.close();
_L2:
        return null;
        Exception exception;
        exception;
        cursor = null;
_L7:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L4:
        if (cursor == null) goto _L2; else goto _L6
        exception;
          goto _L7
        exception1;
        if (true) goto _L9; else goto _L8
_L8:
    }
}
