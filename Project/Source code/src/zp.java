// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Bundle;
import java.util.Iterator;
import org.json.JSONObject;

public class zp
{

    private static final boolean a;

    public static Bundle a(JSONObject jsonobject)
    {
        Bundle bundle = new Bundle();
        for (Iterator iterator = jsonobject.keys(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            Object obj = jsonobject.get(s);
            if (obj instanceof String)
            {
                bundle.putString(s, (String)obj);
            } else
            if (obj instanceof Long)
            {
                bundle.putLong(s, ((Long)obj).longValue());
            } else
            if (obj instanceof Integer)
            {
                bundle.putInt(s, ((Integer)obj).intValue());
            } else
            if (obj instanceof Double)
            {
                bundle.putDouble(s, ((Double)obj).doubleValue());
            } else
            if (obj instanceof Float)
            {
                bundle.putFloat(s, ((Float)obj).floatValue());
            } else
            {
                xz.b("DxJsonParser", (new StringBuilder()).append("not supported value: ").append(obj).toString());
            }
        }

        if (a)
        {
            xz.a("DxJsonParser", (new StringBuilder()).append("result bundle: ").append(bundle.toString()).toString());
        }
        return bundle;
    }

    static 
    {
        a = xy.a;
    }
}
