// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.jar.JarFile;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

// Referenced classes of package com.tapjoy:
//            TapjoyLog

public class TapjoyUtil
{

    private static final String TAG = "TapjoyUtil";
    private static HashMap _resources = new HashMap();
    private static String mraidJs = null;

    public TapjoyUtil()
    {
    }

    public static String SHA1(String s)
    {
        return hashAlgorithm("SHA-1", s);
    }

    public static String SHA256(String s)
    {
        return hashAlgorithm("SHA-256", s);
    }

    public static Document buildDocument(String s)
    {
        Document document;
        try
        {
            DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
            ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(s.getBytes("UTF-8"));
            document = documentbuilderfactory.newDocumentBuilder().parse(bytearrayinputstream);
        }
        catch (Exception exception)
        {
            TapjoyLog.e("TapjoyUtil", (new StringBuilder()).append("buildDocument exception: ").append(exception.toString()).toString());
            return null;
        }
        return document;
    }

    private static String convertToHex(byte abyte0[])
    {
        StringBuffer stringbuffer;
        int i;
        stringbuffer = new StringBuffer();
        i = 0;
_L2:
        int j;
        int k;
        if (i >= abyte0.length)
        {
            break; /* Loop/switch isn't completed */
        }
        j = 0xf & abyte0[i] >>> 4;
        k = 0;
_L3:
        int l;
        int i1;
        if (j >= 0 && j <= 9)
        {
            stringbuffer.append((char)(j + 48));
        } else
        {
            stringbuffer.append((char)(97 + (j - 10)));
        }
        l = 0xf & abyte0[i];
        i1 = k + 1;
        if (k < 1)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return stringbuffer.toString();
        k = i1;
        j = l;
          goto _L3
    }

    public static String convertURLParams(Map map, boolean flag)
    {
        Iterator iterator = map.entrySet().iterator();
        String s = "";
        while (iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (s.length() > 0)
            {
                s = (new StringBuilder()).append(s).append("&").toString();
            }
            String s1;
            if (flag)
            {
                s1 = (new StringBuilder()).append(s).append(Uri.encode((String)entry.getKey())).append("=").append(Uri.encode((String)entry.getValue())).toString();
            } else
            {
                s1 = (new StringBuilder()).append(s).append((String)entry.getKey()).append("=").append((String)entry.getValue()).toString();
            }
            s = s1;
        }
        return s;
    }

    public static Map convertURLParams(String s, boolean flag)
    {
        HashMap hashmap = new HashMap();
        String s1 = "";
        String s2 = "";
        boolean flag1 = false;
        int i = 0;
        while (i < s.length() && i != -1) 
        {
            char c = s.charAt(i);
            if (!flag1)
            {
                if (c == '=')
                {
                    if (flag)
                    {
                        s2 = Uri.decode(s1);
                    } else
                    {
                        s2 = s1;
                    }
                    s1 = "";
                    flag1 = true;
                } else
                {
                    s1 = (new StringBuilder()).append(s1).append(c).toString();
                }
            } else
            if (flag1)
            {
                if (c == '&')
                {
                    String s3;
                    if (flag)
                    {
                        s3 = Uri.decode(s1);
                    } else
                    {
                        s3 = s1;
                    }
                    s1 = "";
                    hashmap.put(s2, s3);
                    flag1 = false;
                } else
                {
                    s1 = (new StringBuilder()).append(s1).append(c).toString();
                }
            }
            i++;
        }
        if (flag1 && s1.length() > 0)
        {
            if (flag)
            {
                s1 = Uri.decode(s1);
            }
            hashmap.put(s2, s1);
        }
        return hashmap;
    }

    public static String copyTextFromJarIntoString(String s)
    {
        return copyTextFromJarIntoString(s, null);
    }

    public static String copyTextFromJarIntoString(String s, Context context)
    {
        byte abyte0[];
        StringBuffer stringbuffer;
        URL url;
        abyte0 = new byte[1024];
        stringbuffer = new StringBuffer();
        url = com/tapjoy/TapjoyUtil.getClassLoader().getResource(s);
        if (context == null || url != null) goto _L2; else goto _L1
_L1:
        InputStream inputstream2 = context.getAssets().open(s);
        InputStream inputstream = inputstream2;
_L3:
        int j = inputstream.read(abyte0);
        if (j > 0)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        String s3 = stringbuffer.toString();
        Exception exception;
        Exception exception1;
        String s1 = s3;
        Exception exception3;
        Exception exception4;
        String s2;
        int i;
        JarFile jarfile;
        InputStream inputstream1;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception5)
            {
                return s1;
            }
        }
        return s1;
_L2:
        s2 = url.getFile();
        if (s2.startsWith("jar:"))
        {
            s2 = s2.substring(4);
        }
        if (s2.startsWith("file:"))
        {
            s2 = s2.substring(5);
        }
        i = s2.indexOf("!");
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        s2 = s2.substring(0, i);
        jarfile = new JarFile(s2);
        inputstream1 = jarfile.getInputStream(jarfile.getJarEntry(s));
        inputstream = inputstream1;
          goto _L3
        stringbuffer.append((new String(abyte0)).substring(0, j));
          goto _L3
        exception;
_L7:
        TapjoyLog.d("TapjoyUtil", (new StringBuilder()).append("file exception: ").append(exception.toString()).toString());
        exception.printStackTrace();
        s1 = null;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception3)
            {
                return null;
            }
            return null;
        } else
        {
            break MISSING_BLOCK_LABEL_81;
        }
        exception4;
        inputstream = null;
        exception1 = exception4;
_L5:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (Exception exception2) { }
        }
        throw exception1;
        exception1;
        if (true) goto _L5; else goto _L4
_L4:
        exception;
        inputstream = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static Bitmap createBitmapFromView(View view)
    {
        Bitmap bitmap = null;
        if (view != null)
        {
            int i = view.getLayoutParams().width;
            bitmap = null;
            if (i > 0)
            {
                int j = view.getLayoutParams().height;
                bitmap = null;
                if (j > 0)
                {
                    try
                    {
                        bitmap = Bitmap.createBitmap(view.getLayoutParams().width, view.getLayoutParams().height, android.graphics.Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(bitmap);
                        view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
                        view.draw(canvas);
                    }
                    catch (Exception exception)
                    {
                        TapjoyLog.i("TapjoyUtil", (new StringBuilder()).append("error creating bitmap: ").append(exception.toString()).toString());
                        return bitmap;
                    }
                }
            }
        }
        return bitmap;
    }

    public static void deleteFileOrDirectory(File file)
    {
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                deleteFileOrDirectory(afile[j]);
            }

        }
        TapjoyLog.i("TapjoyUtil", "****************************************");
        TapjoyLog.i("TapjoyUtil", (new StringBuilder()).append("deleteFileOrDirectory: ").append(file.getAbsolutePath()).toString());
        TapjoyLog.i("TapjoyUtil", "****************************************");
        file.delete();
    }

    public static String getNodeTrimValue(NodeList nodelist)
    {
        int i = 0;
        Element element = (Element)nodelist.item(0);
        if (element != null)
        {
            NodeList nodelist1 = element.getChildNodes();
            int j = nodelist1.getLength();
            String s = "";
            for (; i < j; i++)
            {
                Node node = nodelist1.item(i);
                if (node != null)
                {
                    s = (new StringBuilder()).append(s).append(node.getNodeValue()).toString();
                }
            }

            if (s != null && !s.equals(""))
            {
                return s.trim();
            } else
            {
                return null;
            }
        } else
        {
            return null;
        }
    }

    public static String getRedirectDomain(String s)
    {
        String s1 = "";
        if (s != null)
        {
            s1 = s.substring(s.indexOf("//") + "//".length(), s.lastIndexOf("/"));
        }
        return s1;
    }

    public static Object getResource(String s)
    {
        return _resources.get(s);
    }

    private static String hashAlgorithm(String s, String s1)
    {
        byte[] _tmp = new byte[40];
        MessageDigest messagedigest = MessageDigest.getInstance(s);
        messagedigest.update(s1.getBytes("iso-8859-1"), 0, s1.length());
        return convertToHex(messagedigest.digest());
    }

    public static void safePut(Map map, String s, String s1, boolean flag)
    {
label0:
        {
            if (s != null && s.length() > 0 && s1 != null && s1.length() > 0)
            {
                if (!flag)
                {
                    break label0;
                }
                map.put(Uri.encode(s), Uri.encode(s1));
            }
            return;
        }
        map.put(s, s1);
    }

    public static View scaleDisplayAd(View view, int i)
    {
        int j = view.getLayoutParams().width;
        int k = view.getLayoutParams().height;
        TapjoyLog.i("TapjoyUtil", (new StringBuilder()).append("wxh: ").append(j).append("x").append(k).toString());
        if (j > i)
        {
            int l = Double.valueOf(100D * Double.valueOf(Double.valueOf(i).doubleValue() / Double.valueOf(j).doubleValue()).doubleValue()).intValue();
            ((WebView)(WebView)view).getSettings().setSupportZoom(true);
            ((WebView)(WebView)view).setPadding(0, 0, 0, 0);
            ((WebView)(WebView)view).setVerticalScrollBarEnabled(false);
            ((WebView)(WebView)view).setHorizontalScrollBarEnabled(false);
            ((WebView)(WebView)view).setInitialScale(l);
            view.setLayoutParams(new android.view.ViewGroup.LayoutParams(i, (k * i) / j));
        }
        return view;
    }

    public static void setResource(String s, Object obj)
    {
        _resources.put(s, obj);
    }

}
