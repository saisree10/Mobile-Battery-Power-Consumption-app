// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;

final class ky
    implements Runnable
{

    final kx a;

    public ky(kx kx1)
    {
        a = kx1;
        super();
    }

    public void run()
    {
        int i;
        long l;
        i = lp.a(kx.a(a)).a();
        l = System.currentTimeMillis();
        la.b(kx.a(), (new StringBuilder("evict,count=")).append(i).append(",capacity=").append(kx.b(a)).toString());
        if (i <= kx.b(a)) goto _L2; else goto _L1
_L1:
        SQLiteDatabase sqlitedatabase;
        int j;
        Cursor cursor;
        sqlitedatabase = lo.a(kx.a(a)).getWritableDatabase();
        j = 50 + (i - kx.b(a));
        cursor = sqlitedatabase.rawQuery((new StringBuilder("select _id,value from records order by lastAccess ASC,visitCount ASC limit ")).append(j).toString(), null);
        la.b(kx.a(), (new StringBuilder("evict query time used:")).append(System.currentTimeMillis() - l).toString());
        if (cursor == null) goto _L2; else goto _L3
_L3:
        StringBuilder stringbuilder = new StringBuilder();
_L7:
        if (cursor.moveToNext()) goto _L5; else goto _L4
_L4:
        if (stringbuilder.length() > 0)
        {
            String s2 = stringbuilder.substring(0, -1 + stringbuilder.length());
            int k = sqlitedatabase.delete("records", (new StringBuilder("_id in (")).append(s2).append(")").toString(), null);
            if (k < j)
            {
                la.b(kx.a(), (new StringBuilder("evict,deleted:")).append(k).append(",limit:").append(j).toString());
            }
        }
        cursor.close();
_L2:
        la.b(kx.a(), (new StringBuilder("evict time used:")).append(System.currentTimeMillis() - l).toString());
        return;
_L5:
        String s;
        boolean flag;
        s = cursor.getString(0);
        String s1 = cursor.getString(1);
        if (!s1.endsWith("png"))
        {
            break; /* Loop/switch isn't completed */
        }
        File file = new File(kw.b, s1);
        if (!file.exists())
        {
            break; /* Loop/switch isn't completed */
        }
        flag = file.delete();
_L8:
        if (flag)
        {
            stringbuilder.append(s).append(',');
        }
        if (true) goto _L7; else goto _L6
_L6:
        flag = true;
          goto _L8
        if (true) goto _L7; else goto _L9
_L9:
    }
}
