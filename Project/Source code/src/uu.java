// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class uu
{

    public static final String a[] = {
        "_id", "key", "lastModified", "value"
    };

    protected static ArrayList a(Context context, String s)
    {
        String s1;
        if (TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_141;
        }
        s1 = vv.b((new StringBuilder()).append(s).append("->").append(context.getPackageName()).toString());
        Cursor cursor1;
        String as[] = {
            s1
        };
        cursor1 = context.getContentResolver().query(vk.a, a, "key =? ", as, null);
        Cursor cursor;
        cursor = cursor1;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        ArrayList arraylist;
        if (cursor.getCount() <= 0 || !cursor.moveToNext())
        {
            break MISSING_BLOCK_LABEL_129;
        }
        arraylist = vd.c(new JSONObject(cursor.getString(3)));
        if (cursor != null)
        {
            cursor.close();
        }
        return arraylist;
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

    protected static void a(Context context, uz uz1)
    {
        if (uz1 != null)
        {
            String as[] = {
                vv.b((new StringBuilder()).append(uz1.b()).append("->").append("PageUtil").toString())
            };
            context.getContentResolver().delete(vk.a, "key =? ", as);
            Log.d("PageCahe", (new StringBuilder()).append(" deteleRecord topic replystatus  ").append(uz1.b()).toString());
        }
    }

    protected static void a(Context context, vb vb1)
    {
        if (vb1 != null)
        {
            String s = vv.b((new StringBuilder()).append(vb1.d()).append("->").append(context.getPackageName()).toString());
            long l = vb1.c();
            String s1 = vb1.b().toString();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("key", s);
            contentvalues.put("lastModified", Long.valueOf(l));
            contentvalues.put("value", s1);
            context.getContentResolver().insert(vk.a, contentvalues);
            vt.b("PageCahe", (new StringBuilder()).append(" insert record time ").append(l).append(" uri ").append(vb1.a()).toString());
            try
            {
                Iterator iterator = vd.b(vb1.b()).iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    uz uz1 = (uz)iterator.next();
                    if (uz1.c() > 0)
                    {
                        c(context, uz1);
                    }
                } while (true);
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
                return;
            }
        }
    }

    protected static Uri b(Context context, uz uz1)
    {
        if (uz1 != null)
        {
            String s = vv.b((new StringBuilder()).append(uz1.b()).append("->").append("PageUtil").toString());
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("key", s);
            contentvalues.put("lastModified", Long.valueOf(System.currentTimeMillis()));
            contentvalues.put("value", Integer.valueOf(uz1.c()));
            return context.getContentResolver().insert(vk.a, contentvalues);
        } else
        {
            return null;
        }
    }

    protected static void b(Context context, String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            String as[] = {
                vv.b((new StringBuilder()).append(s).append("->").append(context.getPackageName()).toString())
            };
            context.getContentResolver().delete(vk.a, "key =? ", as);
            Log.d("PageCahe", (new StringBuilder()).append(" deteleRecord uri ").append(s).toString());
        }
    }

    protected static void b(Context context, vb vb1)
    {
        if (vb1 != null)
        {
            b(context, vb1.d());
            a(context, vb1);
        }
    }

    protected static long c(Context context, String s)
    {
        Cursor cursor;
        cursor = null;
        if (TextUtils.isEmpty(s))
        {
            break MISSING_BLOCK_LABEL_127;
        }
        Cursor cursor2;
        String as[] = {
            vv.b((new StringBuilder()).append(s).append("->").append(context.getPackageName()).toString())
        };
        cursor2 = context.getContentResolver().query(vk.a, a, "key =? ", as, null);
        if (cursor2 == null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        long l;
        if (cursor2.getCount() <= 0 || !cursor2.moveToNext())
        {
            break MISSING_BLOCK_LABEL_115;
        }
        l = cursor2.getLong(2);
        if (cursor2 != null)
        {
            cursor2.close();
        }
        return l;
        if (cursor2 != null)
        {
            cursor2.close();
        }
_L1:
        return -1L;
        Exception exception1;
        exception1;
        Cursor cursor1 = null;
_L4:
        exception1.printStackTrace();
        if (cursor1 != null)
        {
            cursor1.close();
        }
          goto _L1
        Exception exception;
        exception;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        cursor = cursor2;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor1;
        if (true) goto _L3; else goto _L2
_L2:
        exception1;
        cursor1 = cursor2;
          goto _L4
    }

    protected static boolean c(Context context, uz uz1)
    {
        if (uz1 != null)
        {
            a(context, uz1);
            if (b(context, uz1) != null)
            {
                return true;
            }
        }
        return false;
    }

}
