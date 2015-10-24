// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class bcq extends Enum
{

    public static final bcq a;
    public static final bcq b;
    public static final bcq c;
    public static final bcq d;
    public static final bcq e;
    public static final bcq f;
    public static final bcq g;
    public static final bcq h;
    public static final bcq i;
    private static final bcq l[];
    private String j;
    private String k;

    private bcq(String s, int i1, String s1, String s2)
    {
        super(s, i1);
        j = s1;
        k = s2;
    }

    public static bcq valueOf(String s)
    {
        return (bcq)Enum.valueOf(bcq, s);
    }

    public static bcq[] values()
    {
        return (bcq[])l.clone();
    }

    public final String toString()
    {
        return j;
    }

    static 
    {
        a = new bcq("THM_NotYet", 0, "Not Yet", "Profile request has returned but not yet completed");
        b = new bcq("THM_OK", 1, "Okay", "Completed, No errors");
        c = new bcq("THM_Connection_Error", 2, "Connection Error", "There has been a connection issue, profiling incomplete");
        d = new bcq("THM_HostNotFound_Error", 3, "Host Not Found", "Unable to resolve the host name");
        e = new bcq("THM_NetworkTimeout_Error", 4, "Network Timeout", "Communications layer timed out");
        f = new bcq("THM_Internal_Error", 5, "Internal Error", "Internal Error, profiling incomplete or interrupted");
        g = new bcq("THM_HostVerification_Error", 6, "Host Verification Error", "Host name doesn't match certificate! Potential MITM attack");
        h = new bcq("THM_Interrupted_Error", 7, "Interrupted", "Request was cancelled");
        i = new bcq("THM_InvalidOrgID", 8, "Invalid ORG ID", "Request contained an invalid org id");
        bcq abcq[] = new bcq[9];
        abcq[0] = a;
        abcq[1] = b;
        abcq[2] = c;
        abcq[3] = d;
        abcq[4] = e;
        abcq[5] = f;
        abcq[6] = g;
        abcq[7] = h;
        abcq[8] = i;
        l = abcq;
    }
}
