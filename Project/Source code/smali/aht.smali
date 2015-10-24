.class public Laht;
.super Lahp;
.source "HapticFeedbackCommand.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private h:Lahq;

.field private i:Lahu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 27
    sget-boolean v0, Lazw;->g:Z

    iput-boolean v0, p0, Laht;->f:Z

    .line 28
    iget-boolean v0, p0, Laht;->f:Z

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Laht;->a:Landroid/content/ContentResolver;

    .line 32
    new-instance v0, Lahu;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lahu;-><init>(Laht;Landroid/os/Handler;)V

    iput-object v0, p0, Laht;->i:Lahu;

    goto :goto_0
.end method

.method static synthetic a(Laht;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Laht;->a:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic b(Laht;)Lahq;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Laht;->h:Lahq;

    return-object v0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Laht;->f:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Laht;->i:Lahu;

    invoke-virtual {v0}, Lahu;->a()V

    .line 91
    iput-object p1, p0, Laht;->h:Lahq;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Laht;->f:Z

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Laht;->a:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

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

    .line 72
    iget-boolean v2, p0, Laht;->f:Z

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return v1

    .line 75
    :cond_0
    iget-object v2, p0, Laht;->a:Landroid/content/ContentResolver;

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 76
    if-ne v2, v0, :cond_1

    :goto_1
    iput-boolean v0, p0, Laht;->g:Z

    .line 77
    iget-boolean v1, p0, Laht;->g:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 76
    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Laht;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "HapticFeedbackCommand "

    return-object v0
.end method
