// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.backend;

import aij;
import android.content.Context;
import ank;
import anv;
import anw;
import any;
import aob;
import aof;
import aoh;
import aoi;
import azt;
import azy;
import com.dianxinos.common.coins.CoinManager;
import gt;
import gy;
import hq;
import it;
import java.util.ArrayList;
import java.util.List;
import ka;
import kl;
import my;
import nl;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import pa;
import sh;
import un;
import yy;
import zf;

public class DXBackendConfig
{

    private static String a = "prod";

    public DXBackendConfig()
    {
    }

    public static void a(Context context)
    {
        it.a(a);
        if (azy.a(context, "com.android.vending"))
        {
            ka.a(context).b(false);
        }
        hq.a(context).b(a);
        aij.a(a);
        aof.a(a);
        my.a(a);
        kl.a(a);
        CoinManager.a(a);
        b(context);
        ank.a(a);
        aoi.a(a);
        anw.a(a);
        anv.a(a);
        aoh.a(a);
        un.a(context).a(a);
        pa.a(a);
        zf.a(a);
        aob aob1 = aob.a();
        yy.a(a);
        aob1.a(yy.a(context));
        any.a(a);
        try
        {
            sh.a(a);
        }
        catch (Exception exception)
        {
            azt.a("DXBackendConfig", " Error. ");
        }
        nl.a(a);
    }

    private static void b(Context context)
    {
        String s = gt.a(context);
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("op", gy.o(context)));
        String s1;
        String s2;
        if (azy.a(context, "com.android.vending"))
        {
            s1 = "1";
        } else
        {
            s1 = "0";
        }
        arraylist.add(new BasicNameValuePair("play", s1));
        arraylist.add(new BasicNameValuePair("china", "0"));
        s2 = (new StringBuilder()).append(s).append("&").append(URLEncodedUtils.format(arraylist, "UTF-8")).toString();
        kl.a(context).b(s2);
    }

}
