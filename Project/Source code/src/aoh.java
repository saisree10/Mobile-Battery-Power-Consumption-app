// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.io.IOException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class aoh extends aoq
{

    public static String a = "";

    public static void a(Context context)
    {
        long l;
        long l1;
        l = aog.b(context, 0L);
        l1 = System.currentTimeMillis();
        if (l1 - l > 0x5265c00L || l1 <= l) goto _L2; else goto _L1
_L1:
        int i;
        return;
_L2:
        if ((i = azx.a(context)) == -1) goto _L1; else goto _L3
_L3:
        String s = null;
        JSONObject jsonobject;
        s = azs.a(context, b, a(context, i, "specialstr"));
        jsonobject = new JSONObject(s);
        if (azk.a(jsonobject))
        {
            break MISSING_BLOCK_LABEL_124;
        }
        azt.c("OnSpecialConfigsMgr", (new StringBuilder()).append("bad response: ").append(s).toString());
        if (azk.b(jsonobject))
        {
            aog.a(context, a);
        }
        aog.c(context, l1);
        return;
        aog.a(context, jsonobject.getJSONObject("response").getJSONArray("datas").getJSONObject(0).toString());
        aog.c(context, l1);
        return;
        IOException ioexception;
        ioexception;
        azt.c("OnSpecialConfigsMgr", (new StringBuilder()).append("Unexpected excetpion: ").append(ioexception).toString());
        aog.c(context, l1);
        return;
        JSONException jsonexception;
        jsonexception;
        azt.c("OnSpecialConfigsMgr", (new StringBuilder()).append("Bad response: ").append(s).toString());
        aog.c(context, l1);
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
        azt.c("OnSpecialConfigsMgr", (new StringBuilder()).append(" IllegalStateException ").append(illegalstateexception).toString());
        aog.c(context, l1);
        return;
        Exception exception;
        exception;
        aog.c(context, l1);
        throw exception;
    }

}
