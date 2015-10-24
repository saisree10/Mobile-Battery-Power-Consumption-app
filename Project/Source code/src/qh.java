// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.RedirectHandler;
import org.apache.http.protocol.HttpContext;

class qh
    implements RedirectHandler, qg
{

    final qb a;
    private ou b;
    private volatile boolean c;

    public qh(qb qb1, ou ou1)
    {
        a = qb1;
        super();
        c = false;
        b = ou1;
    }

    public void a()
    {
        c = true;
    }

    public URI getLocationURI(HttpResponse httpresponse, HttpContext httpcontext)
    {
        return null;
    }

    public boolean isRedirectRequested(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (c)
        {
            nz.b("ToolboxClickHandler", "[Http]Action canceled.");
            op.g(qb.a(a), b);
            return false;
        }
        int i = httpresponse.getStatusLine().getStatusCode();
        if (i == 303 || i == 302 || i == 301 || i == 307)
        {
            String s = httpresponse.getHeaders("Location")[0].getValue();
            if (s == null)
            {
                nz.b("ToolboxClickHandler", "[Http] null URL.");
                a.b(b, b.m);
                a.c();
                return false;
            }
            if (pj.a(s))
            {
                nz.b("ToolboxClickHandler", (new StringBuilder()).append("[Http] Market URL: ").append(s).toString());
                a.c(b, s);
                a.c();
                return false;
            } else
            {
                a.e(b, s);
                return false;
            }
        } else
        {
            nz.b("ToolboxClickHandler", (new StringBuilder()).append("[Http] non-Market URL: ").append(b.m).toString());
            a.b(b, b.m);
            a.c();
            return false;
        }
    }
}
