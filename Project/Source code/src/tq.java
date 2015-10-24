// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

class tq
{

    final tp a;
    private final ui b;
    private final Context c;

    public tq(tp tp, Context context)
    {
        a = tp;
        super();
        b = ui.a(context);
        c = context;
    }

    private void a(JSONObject jsonobject, String s)
    {
        String s1 = te.a(tg.a(), s);
        if (ud.b)
        {
            Log.d("stat.EventReporter", (new StringBuilder()).append("pub = ").append(s).toString());
            Log.d("stat.EventReporter", (new StringBuilder()).append("cipher = ").append(s1).toString());
        }
        jsonobject.put("a", s);
        jsonobject.put("b", s1);
        JSONObject jsonobject1 = new JSONObject();
        Calendar calendar = Calendar.getInstance();
        if (calendar.getTimeZone().getRawOffset() != tn.a.getRawOffset())
        {
            jsonobject1.put("c", calendar.getTimeZone().getID());
        }
        jsonobject1.put("d", tn.a(calendar.getTimeInMillis()));
        jsonobject1.put("e", tn.a());
        jsonobject1.put("f", gy.t(c));
        jsonobject1.put("g", gw.a(c));
        jsonobject.put("c", te.a(jsonobject1.toString(), tg.b()));
    }

    private void a(ug ug1, String s, String s1)
    {
        ug1.a(s, te.a(s1, tg.b()));
    }

    private byte[] a(int i)
    {
        byte abyte0[] = new byte[4];
        abyte0[3] = (byte)(i & 0xff);
        abyte0[2] = (byte)(0xff & i >> 8);
        abyte0[1] = (byte)(0xff & i >> 16);
        abyte0[0] = (byte)(0xff & i >> 24);
        return abyte0;
    }

    public boolean a(String s, String s1)
    {
        if (!TextUtils.isEmpty(gw.a(c))) goto _L2; else goto _L1
_L1:
        if (ud.c)
        {
            Log.i("stat.EventReporter", "No lc info!");
        }
_L4:
        return false;
_L2:
        String s2 = b.b();
        se.a(c).b();
        if (ud.c)
        {
            Log.i("stat.EventReporter", (new StringBuilder()).append("Try to upload with token: ").append(s2).toString());
        }
        if (s2 == null || s2.trim().length() == 0 || s == null || s.trim().length() == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        String s3 = ud.a("data", c);
        if (s3 == null || s3.trim().length() == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        ArrayList arraylist = new ArrayList();
        JSONObject jsonobject = new JSONObject();
        ug ug1;
        try
        {
            a(jsonobject, s);
        }
        catch (JSONException jsonexception)
        {
            if (ud.d)
            {
                Log.e("stat.EventReporter", "Can not generate the header.", jsonexception);
                return false;
            }
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            byte abyte0[] = tn.a(jsonobject.toString());
            byte abyte1[] = tn.a(s1);
            byte abyte2[] = new byte[4 + (abyte0.length + abyte1.length)];
            System.arraycopy(a(abyte0.length), 0, abyte2, 0, 4);
            System.arraycopy(abyte0, 0, abyte2, 4, abyte0.length);
            System.arraycopy(abyte1, 0, abyte2, 4 + abyte0.length, abyte1.length);
            arraylist.add(new Pair("data", abyte2));
        }
        catch (Exception exception)
        {
            if (ud.d)
            {
                Log.e("stat.EventReporter", "Can not zip the data.", exception);
                return false;
            }
            continue; /* Loop/switch isn't completed */
        }
        ug1 = new ug(c, s3, "DXCoreService", "stat.EventReporter");
        a(ug1, "token", s2);
        if (!ug1.a(null, arraylist))
        {
            if (ud.d)
            {
                Log.e("stat.EventReporter", "Failed to connect the stat server.");
                return false;
            }
        } else
        {
            if (ud.c)
            {
                Log.i("stat.EventReporter", "Successfully upload the content.");
            }
            return true;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
