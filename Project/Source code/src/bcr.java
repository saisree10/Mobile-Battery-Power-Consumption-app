// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

public class bcr extends WebChromeClient
{

    private bch a;
    private final String b = bcr.getName();

    public bcr(bch bch1)
    {
        a = bch1;
    }

    public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        String _tmp = b;
        (new StringBuilder("onJsAlert() -")).append(s1);
        a.a(s1);
        jsresult.confirm();
        return true;
    }
}
