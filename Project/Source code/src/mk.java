// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import org.json.JSONObject;

public class mk
{

    public static boolean a(JSONObject jsonobject)
    {
        return jsonobject.getJSONObject("responseHeader").getInt("errcode") == 200;
    }

    public static boolean b(JSONObject jsonobject)
    {
        return jsonobject.getJSONObject("responseHeader").getInt("errcode") == 404;
    }
}
