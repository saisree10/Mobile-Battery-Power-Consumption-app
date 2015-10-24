// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.dianxinos.common.coins.CoinManager;
import com.dianxinos.optimizer.module.messagebox.WebActivity;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class zc
{

    private static Intent a(Context context, JSONObject jsonobject)
    {
        String s = jsonobject.optString("package", null);
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        int j;
        android.os.Bundle bundle;
        Intent intent;
        if (TextUtils.isEmpty(s))
        {
            s = context.getPackageName();
        } else
        {
            int i = jsonobject.optInt("version", 0);
            if (azy.b(s) < i)
            {
                return null;
            }
        }
        s1 = jsonobject.optString("class", null);
        s2 = jsonobject.optString("category", null);
        s3 = jsonobject.optString("action", null);
        s4 = jsonobject.optString("data", null);
        s5 = jsonobject.optString("mimetype", null);
        j = jsonobject.optInt("flags", 0x14000000);
        if (!jsonobject.isNull("extras"))
        {
            bundle = zp.a(jsonobject.getJSONObject("extras"));
        } else
        {
            bundle = null;
        }
        intent = new Intent();
        if (!TextUtils.isEmpty(s))
        {
            if (!TextUtils.isEmpty(s1))
            {
                intent.setClassName(s, s1);
            } else
            {
                intent.setPackage(s);
            }
        }
        if (!TextUtils.isEmpty(s2))
        {
            intent.addCategory(s2);
        }
        if (!TextUtils.isEmpty(s3))
        {
            intent.setAction(s3);
        }
        if (!TextUtils.isEmpty(s4))
        {
            Uri uri = Uri.parse(s4);
            if (!TextUtils.isEmpty(s5))
            {
                intent.setDataAndType(uri, s5);
            } else
            {
                intent.setData(uri);
            }
        } else
        if (!TextUtils.isEmpty(s5))
        {
            intent.setType(s5);
        }
        do
        {
            intent.setFlags(j);
            if (bundle != null)
            {
                intent.putExtras(bundle);
            }
            if (context.getPackageManager().resolveActivity(intent, 0x10000) == null || !a(context, s3, s4))
            {
                return null;
            }
            return intent;
        } while (true);
    }

    private static String a(String s)
    {
        String s1;
        try
        {
            s1 = URLEncoder.encode(s, "UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return "";
        }
        return s1;
    }

    public static void a(Context context, boolean flag)
    {
        gm.a(context.getSharedPreferences("mb", 0).edit().putBoolean("hnf", flag));
    }

    public static boolean a(Context context)
    {
        return context.getSharedPreferences("mb", 0).getBoolean("hnf", false);
    }

    private static boolean a(Context context, String s, String s1)
    {
        if ("android.intent.action.UNINSTALL_PACKAGE".equals(s) || "android.intent.action.DELETE".equals(s))
        {
            Uri uri = Uri.parse(s1);
            if ("package".equals(uri.getScheme()))
            {
                return azy.a(context, uri.getSchemeSpecificPart());
            }
        }
        return true;
    }

    public static boolean a(Context context, zd zd1)
    {
        return c(context);
    }

    public static Intent b(Context context, zd zd1)
    {
        JSONObject jsonobject = new JSONObject(zd1.f);
        String s;
        switch (zd1.i)
        {
        default:
            return null;

        case 1: // '\001'
            return a(context, jsonobject);

        case 2: // '\002'
            s = jsonobject.getString("url");
            break;
        }
        Intent intent = new Intent(context, com/dianxinos/optimizer/module/messagebox/WebActivity);
        if (zd1.a == 4)
        {
            StringBuilder stringbuilder = new StringBuilder(s);
            if (s.indexOf('?') <= 0)
            {
                stringbuilder.append("?");
            } else
            {
                stringbuilder.append("&");
            }
            stringbuilder.append("ac=");
            stringbuilder.append(a(CoinManager.a(context).b()));
            stringbuilder.append("&tk=");
            stringbuilder.append(a(gx.a(context)));
            stringbuilder.append("&total=");
            stringbuilder.append(CoinManager.a(context).a());
            stringbuilder.append("&nc=");
            stringbuilder.append(azr.a(context).h());
            stringbuilder.append("&");
            stringbuilder.append(gt.a(context));
            intent.putExtra("url", stringbuilder.toString());
            return intent;
        } else
        {
            intent.putExtra("url", s);
            return intent;
        }
    }

    public static void b(Context context)
    {
        Iterator iterator = (new yx((new yw(context)).getWritableDatabase())).a(-1).iterator();
        while (iterator.hasNext()) 
        {
            zd zd1 = (zd)iterator.next();
            int i;
            int j;
            boolean flag;
            int k;
            int l;
            if (zd1.g == 2)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            j = i << 1;
            if (System.currentTimeMillis() - zd1.c.longValue() > 0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                k = 1;
            } else
            {
                k = 0;
            }
            l = k + j;
            bal.a(context, "mbme", zd1.k, l);
        }
    }

    private static boolean c(Context context)
    {
        bal.a(context, "sysmsg", "a_s", Integer.valueOf(1));
        return true;
    }
}
