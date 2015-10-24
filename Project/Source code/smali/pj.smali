.class public abstract Lpj;
.super Ljava/lang/Object;
.source "BaseClickHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static c:Lorg/apache/http/impl/client/DefaultHttpClient;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Loq;

.field private d:Landroid/app/Activity;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lpj;->d:Landroid/app/Activity;

    .line 58
    iput-object p1, p0, Lpj;->e:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lpj;->a:Landroid/os/Handler;

    .line 60
    invoke-static {p1}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    iput-object v0, p0, Lpj;->b:Loq;

    .line 61
    return-void
.end method

.method static synthetic a(Lpj;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lpj;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lpj;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lpj;->f:Landroid/widget/Toast;

    return-object p1
.end method

.method static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 165
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "http://market."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://market."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://play."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http://play."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "market:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lpj;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lpj;->f:Landroid/widget/Toast;

    return-object v0
.end method

.method static declared-synchronized b()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    .prologue
    .line 180
    const-class v1, Lpj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpj;->c:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lpj;->c:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit v1

    return-object v0

    .line 184
    :cond_0
    :try_start_1
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 185
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 186
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 188
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 189
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 190
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 191
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 192
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 193
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.protocol.max-redirects"

    const/16 v4, 0xa

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 194
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "compatibility"

    invoke-static {v2, v3}, Lorg/apache/http/client/params/HttpClientParams;->setCookiePolicy(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18"

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 199
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 120
    sget v0, Lok;->toolbox_no_apps_des_network_error_b:I

    invoke-virtual {p0, v0}, Lpj;->a(I)V

    .line 121
    return-void
.end method

.method protected a(I)V
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lpj;->a:Landroid/os/Handler;

    new-instance v1, Lpk;

    invoke-direct {v1, p0, p1}, Lpk;-><init>(Lpj;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method public abstract a(Lou;)V
.end method

.method protected a(Lou;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    const-string v0, "BaseClickHandler"

    const-string v1, "An apk link."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p1, p2}, Lpj;->b(Lou;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method protected b(Lou;)V
    .locals 3
    .parameter

    .prologue
    .line 103
    const-string v0, "BaseClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Goto installed App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lou;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lpj;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->d(Landroid/content/Context;Lou;)V

    .line 105
    iget-object v0, p0, Lpj;->e:Landroid/content/Context;

    iget-object v1, p1, Lou;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lpi;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected b(Lou;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 129
    if-nez p2, :cond_0

    .line 130
    const-string v0, "BaseClickHandler"

    const-string v1, "startBrowser: url is null"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lpj;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->e(Landroid/content/Context;Lou;)V

    .line 132
    sget v0, Lok;->toolbox_no_apps_des_network_error_b:I

    invoke-virtual {p0, v0}, Lpj;->a(I)V

    .line 147
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_0
    const-string v0, "BaseClickHandler"

    const-string v1, "Goto browser"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    iget-object v1, p0, Lpj;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lpj;->e:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lop;->a(Landroid/content/Context;Lou;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "BaseClickHandler"

    const-string v2, "Goto browser failed: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    sget v0, Lok;->toolbox_no_browser_play:I

    invoke-virtual {p0, v0}, Lpj;->a(I)V

    .line 145
    iget-object v0, p0, Lpj;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->e(Landroid/content/Context;Lou;)V

    goto :goto_0
.end method

.method protected c(Lou;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    const-string v0, "BaseClickHandler"

    const-string v1, "No network."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lpj;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->f(Landroid/content/Context;Lou;)V

    .line 112
    iget-wide v0, p1, Lou;->v:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 114
    iget-object v0, p0, Lpj;->b:Loq;

    invoke-virtual {v0, p1}, Loq;->a(Lou;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lpj;->a()V

    .line 117
    return-void
.end method

.method protected c(Lou;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 152
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :try_start_0
    const-string v1, "BaseClickHandler"

    const-string v2, "Goto Play"

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lpj;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    iget-object v0, p0, Lpj;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->c(Landroid/content/Context;Lou;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v1, "BaseClickHandler"

    const-string v2, "Goto Play failed:"

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    invoke-virtual {p0, p1, p2}, Lpj;->b(Lou;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method
