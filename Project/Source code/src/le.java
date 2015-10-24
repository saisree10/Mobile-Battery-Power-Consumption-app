// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Map;
import org.json.JSONObject;

public class le extends lb
{

    public int g;
    public String h;
    public Map i;

    public le(JSONObject jsonobject)
    {
        super(jsonobject);
        g = jsonobject.getInt("adType");
        h = jsonobject.optString("content", null);
        i = b(jsonobject.optJSONArray("images"));
    }
}
