// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Environment;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class tz
    implements Runnable
{

    private static final Long a = Long.valueOf(0x5265c00L);
    private Context b;
    private ContentResolver c;
    private String d;
    private String e;
    private String f;
    private String g;
    private ua h;
    private ua i;
    private ua j;
    private ua k;

    public tz(Context context)
    {
        b = context.getApplicationContext();
        c = b.getContentResolver();
        d = b.getPackageName();
        e = (new StringBuilder()).append(d).append("fi").toString();
        f = (new StringBuilder()).append(d).append("vc").toString();
        g = (new StringBuilder()).append(d).append("rt").toString();
    }

    private Long a(PackageInfo packageinfo)
    {
        String s1;
        Long long2;
        String s = b.getPackageName();
        s1 = (new StringBuilder()).append(s).append("fakeFi").toString();
        long2 = Long.valueOf(b.getSharedPreferences("utils", 1).getLong(s1, 0L));
        Long long1 = long2;
        if (long1.longValue() != 0L)
        {
            return long1;
        }
        long1 = uc.a(packageinfo, "firstInstallTime");
        android.content.SharedPreferences.Editor editor = b.getSharedPreferences("utils", 2).edit();
        editor.putLong(s1, long1.longValue());
        editor.commit();
        return long1;
        Exception exception1;
        exception1;
_L1:
        Exception exception;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to getFirstInstallTime!", exception1);
            return long1;
        } else
        {
            return long1;
        }
        exception;
        exception1 = exception;
        long1 = null;
          goto _L1
    }

    private void a(String s, ua ua1)
    {
        sb.a(b).a(s, 0, b(s, ua1));
    }

    private void a(ua ua1)
    {
        b(ua1);
        c(ua1);
        d(ua1);
    }

    private JSONObject b(String s, ua ua1)
    {
        JSONObject jsonobject = new JSONObject();
        if (!"INS-UR-LC".equals(s))
        {
            break MISSING_BLOCK_LABEL_29;
        }
        jsonobject.put(ua1.a(), 1);
        return jsonobject;
        jsonobject.put(String.valueOf(ua1.b()), ud.a(new Date(ua1.c().longValue())));
        return jsonobject;
        JSONException jsonexception;
        jsonexception;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to get Json!", jsonexception);
            return jsonobject;
        }
        break MISSING_BLOCK_LABEL_98;
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to get Json!", exception);
        }
        return jsonobject;
    }

    private void b()
    {
        if (!h.d() || !j.d() || !k.d()) goto _L2; else goto _L1
_L1:
        a("INS-FI", i);
_L4:
        return;
_L2:
        ua ua1;
        if (h.d() && k.d() && !j.d())
        {
            a("INS-CDASD", i);
        }
        if (h.d() && j.d() && !k.d())
        {
            a("INS-WD", i);
        }
        if (h.d() && !j.d() && !k.d())
        {
            a("INS-CD", i);
        }
        if (h.d())
        {
            break; /* Loop/switch isn't completed */
        }
        ua1 = h;
_L5:
        if (!i.a(ua1))
        {
            a("INS-PU", ua1);
            a("INS-UR", i);
            a("INS-UR-LC", i);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (!j.d())
        {
            ua1 = j;
        } else
        {
            boolean flag = k.d();
            ua1 = null;
            if (!flag)
            {
                ua1 = k;
            }
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    private void b(ua ua1)
    {
        android.content.SharedPreferences.Editor editor = b.getSharedPreferences("utils", 2).edit();
        editor.putLong(e, ua.b(ua1).longValue());
        editor.putInt(f, ua.c(ua1).intValue());
        editor.commit();
_L1:
        return;
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to updateSharedPerferencedInfo!", exception);
            return;
        }
          goto _L1
    }

    private ua c()
    {
        ua ua1 = new ua(this);
        PackageInfo packageinfo = b.getPackageManager().getPackageInfo(d, 0);
        ua1.a(a(packageinfo));
        ua1.a(Integer.valueOf(packageinfo.versionCode));
        ua1.a(gw.a(b));
        if (ud.c)
        {
            Log.i("stat.UserReturnStatService", (new StringBuilder()).append("AppUserReturnStat:").append(ua1.toString()).toString());
        }
_L2:
        return ua1;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to processAppUserReturnStat!", namenotfoundexception);
            return ua1;
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to processAppUserReturnStat!", exception);
            return ua1;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void c(ua ua1)
    {
        android.provider.Settings.System.putLong(c, g, System.currentTimeMillis());
        android.provider.Settings.System.putLong(c, e, ua.b(ua1).longValue());
        android.provider.Settings.System.putInt(c, f, ua.c(ua1).intValue());
_L1:
        return;
        Exception exception;
        exception;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to updateSettingsInfo!", exception);
            return;
        }
          goto _L1
    }

    private ua d()
    {
        ua ua1 = new ua(this);
        try
        {
            SharedPreferences sharedpreferences = b.getSharedPreferences("utils", 1);
            Long long1 = Long.valueOf(sharedpreferences.getLong(e, 0L));
            Integer integer = Integer.valueOf(sharedpreferences.getInt(f, 0));
            ua1.a(long1);
            ua1.a(integer);
            if (ud.c)
            {
                Log.i("stat.UserReturnStatService", (new StringBuilder()).append("SharePrefrenceUserReturnStat:").append(ua1.toString()).toString());
            }
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.UserReturnStatService", "Failed to processSharedPrefrenceUserReturnStat!", exception);
                return ua1;
            }
        }
        return ua1;
    }

    private void d(ua ua1)
    {
        FileOutputStream fileoutputstream = null;
        boolean flag = "mounted".equals(Environment.getExternalStorageState());
        fileoutputstream = null;
        if (!flag) goto _L2; else goto _L1
_L1:
        File file;
        boolean flag1;
        file = new File("/sdcard/.userReturn");
        flag1 = file.exists();
        fileoutputstream = null;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        file.createNewFile();
        StringBuilder stringbuilder;
        FileOutputStream fileoutputstream1;
        stringbuilder = new StringBuilder();
        stringbuilder.append(e);
        stringbuilder.append("\t");
        stringbuilder.append(ua.b(ua1));
        stringbuilder.append("\n");
        stringbuilder.append(f);
        stringbuilder.append("\t");
        stringbuilder.append(ua.c(ua1));
        stringbuilder.append("\n");
        fileoutputstream1 = new FileOutputStream(file, false);
        fileoutputstream1.write(stringbuilder.toString().getBytes());
        fileoutputstream1.flush();
_L14:
        if (fileoutputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        fileoutputstream1.close();
_L4:
        return;
        IOException ioexception2;
        ioexception2;
        if (!ud.d) goto _L4; else goto _L3
_L3:
        Log.e("stat.UserReturnStatService", "Close fileOutputStream has IOException!", ioexception2);
        return;
        Exception exception4;
        exception4;
        if (!ud.d) goto _L4; else goto _L5
_L5:
        Log.e("stat.UserReturnStatService", "Close fileOutputStream has Exception!", exception4);
        return;
        Exception exception2;
        exception2;
_L12:
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to updateSDCardInfo!", exception2);
        }
        if (fileoutputstream == null) goto _L4; else goto _L6
_L6:
        fileoutputstream.close();
        return;
        IOException ioexception1;
        ioexception1;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Close fileOutputStream has IOException!", ioexception1);
            return;
        }
          goto _L4
        Exception exception3;
        exception3;
        if (!ud.d) goto _L4; else goto _L7
_L7:
        Log.e("stat.UserReturnStatService", "Close fileOutputStream has Exception!", exception3);
        return;
        Exception exception;
        exception;
_L11:
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_295;
        }
        fileoutputstream.close();
_L9:
        throw exception;
        IOException ioexception;
        ioexception;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Close fileOutputStream has IOException!", ioexception);
        }
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Close fileOutputStream has Exception!", exception1);
        }
        if (true) goto _L9; else goto _L8
_L8:
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L11; else goto _L10
_L10:
        exception2;
        fileoutputstream = fileoutputstream1;
          goto _L12
_L2:
        fileoutputstream1 = null;
        if (true) goto _L14; else goto _L13
_L13:
    }

    private ua e()
    {
        ua ua1 = new ua(this);
        try
        {
            Long long1 = Long.valueOf(android.provider.Settings.System.getLong(c, e, 0L));
            Integer integer = Integer.valueOf(android.provider.Settings.System.getInt(c, f, 0));
            ua1.a(long1);
            ua1.a(integer);
            if (ud.c)
            {
                Log.i("stat.UserReturnStatService", (new StringBuilder()).append("SettingsUserReturnStat:").append(ua1.toString()).toString());
            }
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.UserReturnStatService", "Failed to processSettingsUserReturnStat!", exception);
                return ua1;
            }
        }
        return ua1;
    }

    private ua f()
    {
        ua ua1 = new ua(this);
        File file;
        boolean flag;
        if (!"mounted".equals(Environment.getExternalStorageState()))
        {
            break MISSING_BLOCK_LABEL_826;
        }
        file = new File("/sdcard/.userReturn");
        flag = file.exists();
        if (flag) goto _L2; else goto _L1
_L1:
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception10)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has IOException!", ioexception10);
                }
            }
            catch (Exception exception11)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has Exception!", exception11);
                }
            }
        }
        if (true)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        null.close();
_L4:
        return ua1;
        IOException ioexception9;
        ioexception9;
        if (!ud.d) goto _L4; else goto _L3
_L3:
        Log.e("stat.UserReturnStatService", "Close bufferedReader has IOException!", ioexception9);
        return ua1;
        Exception exception10;
        exception10;
        if (!ud.d) goto _L4; else goto _L5
_L5:
        Log.e("stat.UserReturnStatService", "Close bufferedReader has Exception!", exception10);
        return ua1;
_L2:
        FileInputStream fileinputstream1 = new FileInputStream(file);
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(fileinputstream1));
_L10:
        String s = bufferedreader.readLine();
        if (s == null) goto _L7; else goto _L6
_L6:
        String as[] = s.split("\t");
        if (!e.equals(as[0])) goto _L9; else goto _L8
_L8:
        ua1.a(Long.valueOf(Long.parseLong(as[1])));
          goto _L10
        IOException ioexception;
        ioexception;
        FileInputStream fileinputstream = fileinputstream1;
_L21:
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to processSDCardUserReturnStat!", ioexception);
        }
        IOException ioexception3;
        Exception exception5;
        IOException ioexception5;
        Exception exception8;
        IOException ioexception7;
        if (fileinputstream != null)
        {
            try
            {
                fileinputstream.close();
            }
            catch (IOException ioexception4)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has IOException!", ioexception4);
                }
            }
            catch (Exception exception4)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has Exception!", exception4);
                }
            }
        }
        if (bufferedreader == null) goto _L4; else goto _L11
_L11:
        bufferedreader.close();
        return ua1;
        ioexception3;
        if (!ud.d) goto _L4; else goto _L12
_L12:
        Log.e("stat.UserReturnStatService", "Close bufferedReader has IOException!", ioexception3);
        return ua1;
_L9:
        if (!f.equals(as[0])) goto _L10; else goto _L13
_L13:
        ua1.a(Integer.valueOf(Integer.parseInt(as[1])));
          goto _L10
        exception5;
_L20:
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Failed to processSDCardUserReturnStat!", exception5);
        }
        Exception exception3;
        if (fileinputstream1 != null)
        {
            try
            {
                fileinputstream1.close();
            }
            catch (IOException ioexception6)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has IOException!", ioexception6);
                }
            }
            catch (Exception exception7)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has Exception!", exception7);
                }
            }
        }
        if (bufferedreader == null) goto _L4; else goto _L14
_L14:
        bufferedreader.close();
        return ua1;
        ioexception5;
        if (!ud.d) goto _L4; else goto _L15
_L15:
        Log.e("stat.UserReturnStatService", "Close bufferedReader has IOException!", ioexception5);
        return ua1;
_L7:
        if (ud.c)
        {
            Log.i("stat.UserReturnStatService", (new StringBuilder()).append("SDCardUserReturnStat:").append(ua1.toString()).toString());
        }
_L22:
        if (fileinputstream1 != null)
        {
            try
            {
                fileinputstream1.close();
            }
            catch (IOException ioexception8)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has IOException!", ioexception8);
                }
            }
            catch (Exception exception9)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has Exception!", exception9);
                }
            }
        }
        if (bufferedreader == null) goto _L4; else goto _L16
_L16:
        bufferedreader.close();
        return ua1;
        ioexception7;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Close bufferedReader has IOException!", ioexception7);
            return ua1;
        }
          goto _L4
        exception8;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Close bufferedReader has Exception!", exception8);
            return ua1;
        }
          goto _L4
        exception3;
        if (ud.d)
        {
            Log.e("stat.UserReturnStatService", "Close bufferedReader has Exception!", exception3);
            return ua1;
        }
          goto _L4
        Exception exception6;
        exception6;
        if (!ud.d) goto _L4; else goto _L17
_L17:
        Log.e("stat.UserReturnStatService", "Close bufferedReader has Exception!", exception6);
        return ua1;
        Exception exception;
        exception;
        bufferedreader = null;
        fileinputstream1 = null;
_L19:
        if (fileinputstream1 != null)
        {
            try
            {
                fileinputstream1.close();
            }
            catch (IOException ioexception2)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has IOException!", ioexception2);
                }
            }
            catch (Exception exception2)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close fileInputStream has Exception!", exception2);
                }
            }
        }
        if (bufferedreader != null)
        {
            try
            {
                bufferedreader.close();
            }
            catch (IOException ioexception1)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close bufferedReader has IOException!", ioexception1);
                }
            }
            catch (Exception exception1)
            {
                if (ud.d)
                {
                    Log.e("stat.UserReturnStatService", "Close bufferedReader has Exception!", exception1);
                }
            }
        }
        throw exception;
        exception;
        bufferedreader = null;
        continue; /* Loop/switch isn't completed */
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        fileinputstream1 = fileinputstream;
        if (true) goto _L19; else goto _L18
_L18:
        exception5;
        bufferedreader = null;
        fileinputstream1 = null;
          goto _L20
        exception5;
        bufferedreader = null;
          goto _L20
        ioexception;
        bufferedreader = null;
        fileinputstream = null;
          goto _L21
        ioexception;
        fileinputstream = fileinputstream1;
        bufferedreader = null;
          goto _L21
        bufferedreader = null;
        fileinputstream1 = null;
          goto _L22
    }

    public boolean a()
    {
        long l;
        long l1;
        Long long1 = Long.valueOf(android.provider.Settings.System.getLong(c, g, 0L));
        if (ud.c)
        {
            Log.i("stat.UserReturnStatService", (new StringBuilder()).append("Last reportTime:").append(long1).append(" and now:").append(System.currentTimeMillis()).toString());
        }
        l = System.currentTimeMillis() - long1.longValue();
        l1 = a.longValue();
        boolean flag1;
        int i1 = l != l1;
        flag1 = false;
        if (i1 > 0)
        {
            flag1 = true;
        }
_L2:
        return flag1;
        Exception exception;
        exception;
        boolean flag = ud.d;
        flag1 = false;
        if (flag)
        {
            Log.e("stat.UserReturnStatService", "Failed to get user return reportTime");
            return false;
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void run()
    {
        if (a())
        {
            i = c();
            h = d();
            j = e();
            k = f();
            b();
            a(i);
        }
    }

}
