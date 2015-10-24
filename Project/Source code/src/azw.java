// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.PowerMangerApplication;
import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public final class azw
{

    public static final boolean a;
    public static final boolean b;
    public static final boolean c;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;
    public static final boolean g;
    public static final boolean h;
    public static final boolean i;
    public static final boolean j;
    public static final boolean k;
    public static final boolean l;
    public static final boolean m;

    private static boolean a(Element element, String s, boolean flag)
    {
        NodeList nodelist = element.getElementsByTagName(s);
        if (nodelist != null && nodelist.getLength() > 0 && "0".equals(((Element)nodelist.item(0)).getAttribute("value")))
        {
            flag = false;
        }
        return flag;
    }

    static 
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        boolean flag7;
        boolean flag8;
        boolean flag9;
        boolean flag10;
        boolean flag11;
        flag = true;
        flag1 = true;
        flag2 = true;
        flag3 = true;
        flag4 = true;
        flag5 = true;
        flag6 = true;
        flag7 = true;
        flag8 = true;
        flag9 = true;
        flag10 = true;
        flag11 = true;
        Element element;
        File file = new File("/system/etc/dianxinos/powermgr/hw_config.xml");
        element = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file).getDocumentElement();
        flag = a(element, "autosync", true);
        flag1 = a(element, "bluetooth", true);
        flag2 = a(element, "brightness", true);
        if (!flag2) goto _L2; else goto _L1
_L1:
        if (!a(element, "brightness_auto", true)) goto _L2; else goto _L3
_L3:
        flag3 = true;
_L4:
        boolean flag16;
        flag4 = a(element, "cleanup", true);
        flag5 = a(element, "gps", true);
        flag6 = a(element, "haptic", true);
        flag7 = a(element, "mobile_data", true);
        flag8 = a(element, "radio", true);
        flag9 = a(element, "screen_timeout", true);
        flag10 = a(element, "vibrate", true);
        flag16 = a(element, "wifi", true);
        boolean flag12 = flag16;
        boolean flag17 = a(element, "only2g", true);
        flag11 = flag17;
_L5:
        Exception exception1;
        a = flag;
        b = flag1;
        c = flag2;
        Exception exception;
        boolean flag13;
        boolean flag14;
        boolean flag15;
        if (flag3 && azf.g(PowerMangerApplication.a()))
        {
            flag13 = true;
        } else
        {
            flag13 = false;
        }
        d = flag13;
        e = flag4;
        f = flag5;
        g = flag6;
        if (flag7 && flag8)
        {
            flag14 = true;
        } else
        {
            flag14 = false;
        }
        h = flag14;
        i = flag8;
        j = flag9;
        k = flag10;
        l = flag12;
        if (flag11 && flag8)
        {
            flag15 = true;
        } else
        {
            flag15 = false;
        }
        m = flag15;
        return;
_L2:
        flag3 = false;
          goto _L4
        exception;
        flag12 = true;
        exception1 = exception;
_L6:
        azt.d("ModeCommandConfig", (new StringBuilder()).append("Exception: ").append(exception1.toString()).toString());
          goto _L5
        exception1;
          goto _L6
    }
}
