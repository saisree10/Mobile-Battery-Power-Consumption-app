.class public Lnl;
.super Lng;
.source "ToolboxSwitches.java"


# static fields
.field private static a:Lnl;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string v0, "dxtoolbox_switches"

    invoke-direct {p0, p1, v0}, Lng;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    iput-boolean v1, p0, Lnl;->b:Z

    .line 25
    iput-boolean v1, p0, Lnl;->c:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnl;->d:Z

    .line 30
    invoke-virtual {p0}, Lnl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnl;->b(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lnl;
    .locals 3
    .parameter

    .prologue
    .line 18
    const-class v1, Lnl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnl;->a:Lnl;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lnl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lnl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnl;->a:Lnl;

    .line 21
    :cond_0
    sget-object v0, Lnl;->a:Lnl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    :try_start_0
    invoke-static {p1}, Lnl;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    const-string v1, "switch"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 50
    const-string v1, "tctb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnl;->b:Z

    .line 51
    const-string v1, "tapjoy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lnl;->c:Z

    .line 52
    const-string v1, "baidu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnl;->d:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, ""

    const-string v2, "failed decode: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lnl;->b:Z

    .line 36
    iput-boolean v0, p0, Lnl;->c:Z

    .line 37
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lnl;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lnl;->c:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lnl;->d:Z

    return v0
.end method
