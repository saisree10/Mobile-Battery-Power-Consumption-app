// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.AssetManager;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;

public class oc
{

    public static Map a(Context context)
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(new GZIPInputStream(context.getAssets().open("dxtoolbox/toolbox.json")));
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[1024];
        do
        {
            int i = bufferedinputstream.read(abyte0);
            if (i == -1)
            {
                break;
            }
            bytearrayoutputstream.write(abyte0, 0, i);
        } while (true);
        bufferedinputstream.close();
        HashMap hashmap = new HashMap();
        JSONObject jsonobject = new JSONObject(bytearrayoutputstream.toString());
        int j = jsonobject.getInt("version");
        if (j != 1)
        {
            throw new IllegalStateException((new StringBuilder()).append("Version mismatch expect 1 but ").append(j).toString());
        }
        JSONArray jsonarray = jsonobject.getJSONArray("data");
        int k = jsonarray.length();
        for (int l = 0; l < k; l++)
        {
            JSONObject jsonobject1 = jsonarray.getJSONObject(l);
            String s = jsonobject1.getString("tag");
            JSONArray jsonarray1 = jsonobject1.getJSONArray("data");
            ArrayList arraylist = new ArrayList();
            int i1 = jsonarray1.length();
            for (int j1 = 0; j1 < i1; j1++)
            {
                JSONObject jsonobject2 = jsonarray1.getJSONObject(j1);
                ou ou1 = new ou();
                a(ou1, jsonobject2);
                arraylist.add(ou1);
            }

            hashmap.put(s, arraylist);
        }

        return hashmap;
    }

    private static void a(ou ou1, JSONObject jsonobject)
    {
        ou1.a = jsonobject.getLong("pid");
        ou1.b = jsonobject.getLong("tid");
        ou1.c = jsonobject.getLong("gid");
        ou1.d = jsonobject.getLong("iid");
        ou1.q = jsonobject.getString("ad_tag");
        ou1.i = jsonobject.getInt("position");
        ou1.e = jsonobject.getString("name");
        ou1.f = jsonobject.getString("pkg_name");
        ou1.g = jsonobject.getString("desc");
        ou1.h = jsonobject.getString("short_desc");
        ou1.j = jsonobject.getInt("open_type");
        ou1.k = jsonobject.getString("url_source");
        ou1.l = jsonobject.getString("icon");
        ou1.m = jsonobject.getString("url_play");
        ou1.n = jsonobject.getString("url_apk");
        ou1.o = jsonobject.getInt("pts");
        ou1.p = jsonobject.getInt("points");
    }
}
