// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import org.json.JSONObject;

public class lg extends lb
{

    public String g;
    public String h;
    public long i;

    public lg(JSONObject jsonobject)
    {
        super(jsonobject);
        i = jsonobject.optLong("size", -1L);
        h = jsonobject.getString("url");
        g = jsonobject.getString("resolution");
    }
}
