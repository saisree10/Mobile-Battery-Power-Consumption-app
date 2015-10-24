.class public Lbcg;
.super Ljava/lang/Object;
.source "JSExecutor.java"


# static fields
.field private static final d:Ljava/lang/reflect/Method;

.field private static final e:Ljava/lang/reflect/Method;

.field private static final f:Ljava/lang/reflect/Method;

.field private static final k:Ljava/util/TreeMap;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Z

.field private c:Lbch;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Class;

    .line 45
    const-class v0, Ljava/lang/String;

    aput-object v0, v2, v5

    .line 46
    const-class v0, Landroid/webkit/ValueCallback;

    aput-object v0, v2, v6

    .line 50
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v3, "evaluateJavascript"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    sput-object v0, Lbcg;->d:Ljava/lang/reflect/Method;

    .line 59
    new-array v0, v6, [Ljava/lang/Class;

    .line 60
    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    .line 65
    :try_start_1
    const-class v3, Landroid/webkit/WebSettings;

    const-string v4, "getDefaultUserAgent"

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 71
    :goto_1
    sput-object v0, Lbcg;->e:Ljava/lang/reflect/Method;

    .line 74
    new-array v0, v6, [Ljava/lang/Class;

    .line 75
    const-class v3, Landroid/webkit/WebSettings$RenderPriority;

    aput-object v3, v2, v5

    .line 80
    :try_start_2
    const-class v2, Landroid/webkit/WebSettings;

    const-string v3, "setPluginState"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 86
    :goto_2
    sput-object v1, Lbcg;->f:Ljava/lang/reflect/Method;

    .line 88
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 90
    sput-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "533.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.13"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "534.30"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lbch;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lbcg;->a:Landroid/webkit/WebView;

    .line 27
    iput-boolean v1, p0, Lbcg;->b:Z

    .line 28
    iput-object v2, p0, Lbcg;->c:Lbch;

    .line 33
    const-string v0, "androidJSInterface"

    iput-object v0, p0, Lbcg;->g:Ljava/lang/String;

    .line 34
    const-class v0, Lbcg;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbcg;->h:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lbcg;->i:Z

    .line 196
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSExecutor() Build: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {}, Lbcg;->b()Z

    move-result v0

    iput-boolean v0, p0, Lbcg;->i:Z

    .line 200
    iput-object p2, p0, Lbcg;->c:Lbch;

    .line 202
    if-eqz p3, :cond_3

    .line 204
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbcg;->a:Landroid/webkit/WebView;

    .line 205
    iget-object v0, p0, Lbcg;->c:Lbch;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lbch;

    invoke-direct {v0, v2}, Lbch;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lbcg;->c:Lbch;

    .line 207
    :cond_0
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    .line 209
    iget-object v0, p0, Lbcg;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lbcg;->j:Landroid/webkit/WebSettings;

    .line 211
    iget-object v0, p0, Lbcg;->j:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 214
    sget-object v0, Lbcg;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 218
    :try_start_0
    sget-object v0, Lbcg;->f:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lbcg;->j:Landroid/webkit/WebSettings;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lbcg;->a:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lbcg;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 238
    invoke-static {}, Lbcg;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lbcg;->c:Lbch;

    iget-object v0, v0, Lbch;->a:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    const-string v1, "alternate JS interface but no global latch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    .line 257
    :cond_3
    :goto_1
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 222
    iget-object v2, p0, Lbcg;->h:Ljava/lang/String;

    const-string v3, "m_setPluginState invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 226
    iget-object v2, p0, Lbcg;->h:Ljava/lang/String;

    const-string v3, "m_setPluginState invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    :catch_2
    move-exception v0

    .line 230
    iget-object v2, p0, Lbcg;->h:Ljava/lang/String;

    const-string v3, "m_setPluginState invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    :cond_4
    iget-boolean v0, p0, Lbcg;->i:Z

    if-nez v0, :cond_5

    .line 247
    iget-object v0, p0, Lbcg;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lbcg;->c:Lbch;

    const-string v2, "androidJSInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_5
    iget-object v0, p0, Lbcg;->c:Lbch;

    iget-object v0, v0, Lbch;->a:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_6

    .line 252
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    const-string v1, "broken JS interface but no global latch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_6
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lbcg;->a:Landroid/webkit/WebView;

    new-instance v1, Lbcr;

    iget-object v2, p0, Lbcg;->c:Lbch;

    invoke-direct {v1, v2}, Lbcr;-><init>(Lbch;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lbcg;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 111
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 325
    iget-boolean v0, p0, Lbcg;->b:Z

    if-nez v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-object v1

    .line 327
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, ""

    goto :goto_0

    .line 330
    :cond_2
    iget-boolean v0, p0, Lbcg;->i:Z

    if-nez v0, :cond_a

    invoke-static {}, Lbcg;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 336
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 337
    iget-object v2, p0, Lbcg;->c:Lbch;

    invoke-virtual {v2, v0}, Lbch;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 340
    :goto_1
    invoke-static {}, Lbcg;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "javascript:(function(){try{return "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " + \"\";}catch(js_eval_err){return \'\';}})();"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    :goto_2
    iget-object v5, p0, Lbcg;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSResult() attempting to execute: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v5, p0, Lbcg;->c:Lbch;

    iput-object v1, v5, Lbch;->b:Ljava/lang/String;

    .line 351
    invoke-static {}, Lbcg;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 356
    :try_start_0
    sget-object v5, Lbcg;->d:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lbcg;->a:Landroid/webkit/WebView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    iget-object v8, p0, Lbcg;->c:Lbch;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v2, v3

    .line 374
    :goto_3
    if-eqz v2, :cond_3

    .line 377
    iget-object v2, p0, Lbcg;->c:Lbch;

    iget-object v2, v2, Lbch;->a:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_3

    .line 379
    iget-object v2, p0, Lbcg;->c:Lbch;

    iget-object v2, v2, Lbch;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 387
    :cond_3
    :goto_4
    iget-boolean v2, p0, Lbcg;->i:Z

    if-nez v2, :cond_0

    invoke-static {}, Lbcg;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    if-eqz v0, :cond_8

    .line 392
    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 394
    iget-object v1, p0, Lbcg;->h:Ljava/lang/String;

    .line 396
    :cond_4
    iget-object v1, p0, Lbcg;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getJSResult() count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    :goto_5
    iget-object v0, p0, Lbcg;->c:Lbch;

    iget-object v0, v0, Lbch;->b:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 405
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    .line 412
    :goto_6
    iget-object v0, p0, Lbcg;->c:Lbch;

    iget-object v1, v0, Lbch;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 342
    :cond_5
    iget-boolean v2, p0, Lbcg;->i:Z

    if-nez v2, :cond_6

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "javascript:window.androidJSInterface.getString((function(){try{return "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " + \"\";}catch(js_eval_err){return \'\';}})());"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 345
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "javascript:alert((function(){try{return "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " + \"\";}catch(js_eval_err){return \'\';}})());"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 358
    :catch_0
    move-exception v2

    .line 360
    iget-object v3, p0, Lbcg;->h:Ljava/lang/String;

    const-string v5, "getJSResult() invoke failed: "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 372
    goto :goto_3

    .line 363
    :catch_1
    move-exception v2

    .line 365
    iget-object v3, p0, Lbcg;->h:Ljava/lang/String;

    const-string v5, "getJSResult() invoke failed: "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 372
    goto/16 :goto_3

    .line 368
    :catch_2
    move-exception v2

    .line 370
    iget-object v3, p0, Lbcg;->h:Ljava/lang/String;

    const-string v5, "getJSResult() invoke failed: "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    .line 371
    goto/16 :goto_3

    .line 385
    :cond_7
    iget-object v3, p0, Lbcg;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 400
    :cond_8
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    const-string v1, "latch == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 409
    :cond_9
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getJSResult() After latch: got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbcg;->c:Lbch;

    iget-object v1, v1, Lbch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public a(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 122
    const-string v1, ""

    .line 124
    sget-object v0, Lbcg;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 127
    :try_start_0
    sget-object v0, Lbcg;->e:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    :cond_0
    :goto_1
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    iget-object v2, p0, Lbcg;->h:Ljava/lang/String;

    const-string v3, "getJSResult() invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 135
    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 139
    iget-object v2, p0, Lbcg;->h:Ljava/lang/String;

    const-string v3, "getJSResult() invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 142
    :catch_2
    move-exception v0

    .line 144
    iget-object v2, p0, Lbcg;->h:Ljava/lang/String;

    const-string v3, "getJSResult() invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 152
    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lbcg;->j:Landroid/webkit/WebSettings;

    if-eqz v1, :cond_3

    .line 154
    iget-object v0, p0, Lbcg;->j:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    :cond_4
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    .line 165
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mozilla/5.0 (Linux; U; Android "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Build/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AppleWebKit/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (KHTML, like Gecko) Version/4.0 Mobile Safari/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbco;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 171
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lbcg;->k:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public c()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 263
    iget-boolean v0, p0, Lbcg;->b:Z

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lbcg;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 268
    iput-boolean v5, p0, Lbcg;->b:Z

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    .line 278
    iget-boolean v0, p0, Lbcg;->i:Z

    if-nez v0, :cond_2

    invoke-static {}, Lbcg;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 281
    const-string v0, "<html><head></head><body onLoad=\'javascript:window.androidJSInterface.getString(1)\'></body></html>"

    .line 282
    iget-object v3, p0, Lbcg;->c:Lbch;

    invoke-virtual {v3, v1}, Lbch;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 283
    iget-object v3, p0, Lbcg;->c:Lbch;

    iput-object v2, v3, Lbch;->b:Ljava/lang/String;

    .line 289
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    iget-object v3, p0, Lbcg;->a:Landroid/webkit/WebView;

    const-string v4, "text/html"

    invoke-virtual {v3, v0, v4, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-boolean v0, p0, Lbcg;->i:Z

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    invoke-static {}, Lbcg;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 296
    const-wide/16 v2, 0x5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 298
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    const-string v1, "timed out waiting for javascript"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_2
    const-string v0, "<html><head></head><body></body></html>"

    move-object v1, v2

    goto :goto_1

    .line 302
    :cond_3
    iput-boolean v5, p0, Lbcg;->b:Z

    .line 303
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "in init() count = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    iget-object v0, p0, Lbcg;->c:Lbch;

    iget-object v0, v0, Lbch;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 307
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_4
    iget-object v0, p0, Lbcg;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init() After latch: got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbcg;->c:Lbch;

    iget-object v1, v1, Lbch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 317
    :cond_5
    iput-boolean v5, p0, Lbcg;->b:Z

    goto :goto_0
.end method
