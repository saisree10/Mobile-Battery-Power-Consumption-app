.class public Lahd;
.super Lahp;
.source "AirplaneCommand.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private h:Lahe;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Lbag;->a()Lbag;

    invoke-static {p1}, Lbag;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lahd;->i:Z

    .line 31
    sget-boolean v0, Lazw;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lazf;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lahd;->f:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lahd;->a:Landroid/content/ContentResolver;

    .line 38
    new-instance v0, Lahe;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lahe;-><init>(Lahd;Landroid/os/Handler;)V

    iput-object v0, p0, Lahd;->h:Lahe;

    .line 39
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lahd;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lahd;->a:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lahd;->h:Lahe;

    invoke-virtual {v0}, Lahe;->a()V

    .line 95
    iput-object p1, p0, Lahd;->e:Lahq;

    .line 96
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lahd;->f:Z

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lahd;->a:Landroid/content/ContentResolver;

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lahd;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v2, p0, Lahd;->a:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 87
    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lahd;->g:Z

    .line 88
    iget-boolean v0, p0, Lahd;->g:Z

    return v0

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lahd;->a()Z

    .line 113
    iget-object v1, p0, Lahd;->d:Landroid/content/Context;

    iget-boolean v0, p0, Lahd;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0102

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0101

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "AirplaneCommand "

    return-object v0
.end method
