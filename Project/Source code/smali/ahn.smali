.class public Lahn;
.super Lahp;
.source "CleanupCommand.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private h:Laho;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahn;->f:Z

    .line 31
    iget-boolean v0, p0, Lahn;->f:Z

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lahn;->a:Landroid/content/ContentResolver;

    .line 35
    new-instance v0, Laho;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Laho;-><init>(Lahn;Landroid/os/Handler;)V

    iput-object v0, p0, Lahn;->h:Laho;

    goto :goto_0
.end method

.method static synthetic a(Lahn;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lahn;->a:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lahn;->f:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lahn;->h:Laho;

    invoke-virtual {v0}, Laho;->a()V

    .line 94
    iput-object p1, p0, Lahn;->e:Lahq;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lahn;->f:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lahn;->a:Landroid/content/ContentResolver;

    const-string v2, "com.dianxinos.dxbs.auto_cleanup"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    iget-boolean v2, p0, Lahn;->f:Z

    if-nez v2, :cond_0

    .line 80
    :goto_0
    return v1

    .line 78
    :cond_0
    iget-object v2, p0, Lahn;->a:Landroid/content/ContentResolver;

    const-string v3, "com.dianxinos.dxbs.auto_cleanup"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 79
    if-ne v2, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Lahn;->g:Z

    .line 80
    iget-boolean v1, p0, Lahn;->g:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lahn;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "CleanupCommand "

    return-object v0
.end method
