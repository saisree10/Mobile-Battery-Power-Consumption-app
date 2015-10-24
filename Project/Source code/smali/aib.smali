.class public Laib;
.super Lahp;
.source "RotationCommand.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private h:Laic;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Laib;->a:Landroid/content/ContentResolver;

    .line 22
    new-instance v0, Laic;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Laic;-><init>(Laib;Landroid/os/Handler;)V

    iput-object v0, p0, Laib;->h:Laic;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Laib;->f:Z

    .line 24
    return-void
.end method

.method static synthetic a(Laib;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Laib;->a:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Laib;->h:Laic;

    invoke-virtual {v0}, Laic;->a()V

    .line 53
    iput-object p1, p0, Laib;->e:Lahq;

    .line 54
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 64
    iget-object v1, p0, Laib;->a:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    iget-object v2, p0, Laib;->a:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 73
    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Laib;->g:Z

    .line 74
    iget-boolean v0, p0, Laib;->g:Z

    return v0

    :cond_0
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "RotationCommand "

    return-object v0
.end method
