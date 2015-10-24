// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import android.net.MailTo;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.dianxinos.optimizer.module.messagebox.WebActivity;

public class zi extends WebViewClient
{

    final WebActivity a;

    public zi(WebActivity webactivity)
    {
        a = webactivity;
        super();
    }

    private Intent a(Activity activity, String s, String s1, String s2, String s3)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.putExtra("android.intent.extra.EMAIL", new String[] {
            s
        });
        intent.putExtra("android.intent.extra.TEXT", s2);
        intent.putExtra("android.intent.extra.SUBJECT", s1);
        intent.putExtra("android.intent.extra.CC", s3);
        intent.setType("message/rfc822");
        return intent;
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        WebActivity.a(a, true);
        super.onReceivedError(webview, i, s, s1);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s.startsWith("mailto:"))
        {
            WebActivity webactivity = a;
            if (webactivity != null)
            {
                MailTo mailto = MailTo.parse(s);
                Intent intent = a(webactivity, mailto.getTo(), mailto.getSubject(), mailto.getBody(), mailto.getCc());
                try
                {
                    webactivity.startActivity(intent);
                }
                catch (Exception exception) { }
                webview.reload();
            }
            return true;
        } else
        {
            webview.loadUrl(s);
            return true;
        }
    }
}
