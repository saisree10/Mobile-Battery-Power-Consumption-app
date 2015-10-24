// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import org.json.JSONObject;

public class azk
{

    private int a;
    private long b;

    public azk()
    {
    }

    public static boolean a(JSONObject jsonobject)
    {
        return jsonobject.getJSONObject("responseHeader").getInt("errcode") == 200;
    }

    public static boolean b(JSONObject jsonobject)
    {
        return jsonobject.getJSONObject("responseHeader").getInt("errcode") == 404;
    }

    public JSONObject a(String s)
    {
        JSONObject jsonobject = new JSONObject(s);
        JSONObject jsonobject1 = jsonobject.getJSONObject("responseHeader");
        a = jsonobject1.getInt("errcode");
        b = jsonobject1.getLong("time");
        return jsonobject.getJSONObject("response");
    }

    public boolean a()
    {
        return a == 200;
    }
}
