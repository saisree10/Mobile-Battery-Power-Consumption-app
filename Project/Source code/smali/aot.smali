.class public Laot;
.super Laou;
.source "PowerSettingsHelper.java"


# static fields
.field private static d:Laot;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Laou;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Laot;
    .locals 2
    .parameter

    .prologue
    .line 32
    sget-object v0, Laot;->d:Laot;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Laot;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Laot;->d:Laot;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Laot;

    invoke-direct {v0, p0}, Laot;-><init>(Landroid/content/Context;)V

    sput-object v0, Laot;->d:Laot;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Laot;->d:Laot;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a()V
    .locals 7

    .prologue
    .line 103
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "sep"

    new-instance v2, Laow;

    const-string v3, "sep"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0196

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method protected a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const v6, 0x7f0a0198

    .line 74
    const/16 v0, 0x78

    if-ne p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "brightness"

    new-instance v2, Laow;

    const-string v3, "brightness"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203ef

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_0
    return-void

    .line 78
    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "brightness"

    new-instance v2, Laow;

    const-string v3, "brightness"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203f0

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_1
    const/16 v0, 0x32

    if-lt p1, v0, :cond_2

    .line 83
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "brightness"

    new-instance v2, Laow;

    const-string v3, "brightness"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203f1

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "brightness"

    new-instance v2, Laow;

    const-string v3, "brightness"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f020402

    const/4 v5, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0a0197

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "wifi"

    new-instance v2, Laow;

    const-string v3, "wifi"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203fa

    const/4 v5, 0x1

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "wifi"

    new-instance v2, Laow;

    const-string v3, "wifi"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f020404

    const/4 v5, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected b(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0a019b

    const/4 v5, 0x1

    .line 93
    if-eq p1, v5, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 94
    :cond_0
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "vibrate"

    new-instance v2, Laow;

    const-string v3, "vibrate"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203ec

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "vibrate"

    new-instance v2, Laow;

    const-string v3, "vibrate"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203eb

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0203ff

    const/4 v7, 0x0

    const v6, 0x7f0a019d

    .line 58
    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "mobileData"

    new-instance v2, Laow;

    const-string v3, "mobileData"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f020400

    const/4 v5, 0x1

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    invoke-static {}, Lazf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laot;->c:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "mobileData"

    new-instance v2, Laow;

    const-string v3, "mobileData"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-direct {v2, v3, v6, v8, v7}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "mobileData"

    new-instance v2, Laow;

    const-string v3, "mobileData"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-direct {v2, v3, v6, v8, v7}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected c(Z)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0a019e

    .line 108
    iput-boolean p1, p0, Laot;->c:Z

    .line 109
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "airplane"

    new-instance v2, Laow;

    const-string v3, "airplane"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203e7

    const/4 v5, 0x1

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "airplane"

    new-instance v2, Laow;

    const-string v3, "airplane"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203e6

    const/4 v5, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected d(Z)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0a0199

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "GPS"

    new-instance v2, Laow;

    const-string v3, "GPS"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203ea

    const/4 v5, 0x1

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "GPS"

    new-instance v2, Laow;

    const-string v3, "GPS"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203fd

    const/4 v5, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected e(Z)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0a019f

    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "bluetooth"

    new-instance v2, Laow;

    const-string v3, "bluetooth"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203e9

    const/4 v5, 0x1

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "bluetooth"

    new-instance v2, Laow;

    const-string v3, "bluetooth"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203fc

    const/4 v5, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected f(Z)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0a01a1

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "sync"

    new-instance v2, Laow;

    const-string v3, "sync"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203f6

    const/4 v5, 0x1

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Laot;->b:Ljava/util/HashMap;

    const-string v1, "sync"

    new-instance v2, Laow;

    const-string v3, "sync"

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f020403

    const/4 v5, 0x0

    invoke-direct {v2, v3, v6, v4, v5}, Laow;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
