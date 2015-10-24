.class public Lahv;
.super Lahp;
.source "MobileDataCommand.java"


# instance fields
.field private a:Landroid/net/ConnectivityManager;

.field private h:Landroid/content/ContentQueryMap;

.field private i:Lahy;

.field private j:Landroid/content/ContentResolver;

.field private k:Lahx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 42
    sget-boolean v0, Lazw;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lazf;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lazf;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Lahv;->f:Z

    .line 45
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lahv;->a:Landroid/net/ConnectivityManager;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lahv;->j:Landroid/content/ContentResolver;

    .line 47
    new-instance v0, Lahx;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lahx;-><init>(Lahv;Landroid/os/Handler;)V

    iput-object v0, p0, Lahv;->k:Lahx;

    .line 50
    iget-object v0, p0, Lahv;->j:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v6, [Ljava/lang/String;

    const-string v7, "mobile_data"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    invoke-direct {v1, v0, v3, v6, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lahv;->h:Landroid/content/ContentQueryMap;

    .line 55
    new-instance v0, Lahy;

    invoke-direct {v0, p0, v2}, Lahy;-><init>(Lahv;Lahw;)V

    iput-object v0, p0, Lahv;->i:Lahy;

    .line 57
    :cond_0
    return-void

    :cond_1
    move v0, v5

    .line 42
    goto :goto_0
.end method

.method static synthetic a(Lahv;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lahv;->j:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lahv;->k:Lahx;

    invoke-virtual {v0}, Lahx;->a()V

    .line 136
    iget-object v0, p0, Lahv;->h:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lahv;->h:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lahv;->i:Lahy;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 139
    :cond_0
    iput-object p1, p0, Lahv;->e:Lahq;

    .line 140
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-boolean v0, p0, Lahv;->f:Z

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    :try_start_0
    iget-object v0, p0, Lahv;->a:Landroid/net/ConnectivityManager;

    invoke-static {v0, p1}, Lgj;->a(Landroid/net/ConnectivityManager;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lahv;->e:Lahq;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lahv;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 103
    :goto_1
    iget-object v2, p0, Lahv;->e:Lahq;

    invoke-interface {v2, p0, v0, v0}, Lahq;->a(Lahp;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 109
    iput-boolean v1, p0, Lahv;->f:Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lahv;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 102
    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Lazf;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lahv;->a:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lgj;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Lahv;->g:Z

    .line 125
    iget-boolean v0, p0, Lahv;->g:Z

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lahv;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "MobileDataCommand"

    return-object v0
.end method
