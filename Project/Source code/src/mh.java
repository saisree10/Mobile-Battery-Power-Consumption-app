// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import com.tapjoy.TapjoyConnect;
import java.io.IOException;

public class mh
{

    private static String a = "f47ac16f-1ef2-4ca2-8b5f-93b584fbc8d1";
    private static String b = "dMb3KvVej6vwuTuq1E1A";

    public static void a()
    {
        TapjoyConnect.getTapjoyConnectInstance().showOffers();
    }

    public static void a(Context context, String s)
    {
        String s1;
        nz.b("TapjoyHelper", (new StringBuilder()).append("UID = ").append(s).toString());
        TapjoyConnect.requestTapjoyConnect(context, a, b);
        s1 = "";
        String s2 = lz.b(s);
        s1 = s2;
_L2:
        nz.b("TapjoyHelper", (new StringBuilder()).append("Tjoy uid = ").append(s1).toString());
        TapjoyConnect.getTapjoyConnectInstance().setUserID(s1);
        return;
        IOException ioexception;
        ioexception;
        nz.b("TapjoyHelper", "Encode failed.");
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void a(String s)
    {
        a = s;
    }

    public static void b(String s)
    {
        b = s;
    }

}
