// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public final class azn
{

    public static final boolean a;

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
        boolean flag = true;
        boolean flag1;
        File file = new File("/system/etc/dianxinos/powermgr/features_config.xml");
        flag1 = a(DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file).getDocumentElement(), "statusbar_ongoing", true);
        flag = flag1;
_L2:
        a = flag;
        return;
        Exception exception;
        exception;
        azt.d("FeatureConfig", (new StringBuilder()).append("Exception: ").append(exception.toString()).toString());
        if (true) goto _L2; else goto _L1
_L1:
    }
}
