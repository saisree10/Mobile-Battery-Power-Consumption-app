.class Laic;
.super Landroid/database/ContentObserver;
.source "RotationCommand.java"


# instance fields
.field final synthetic a:Laib;


# direct methods
.method public constructor <init>(Laib;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Laic;->a:Laib;

    .line 28
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 32
    const-string v0, "accelerometer_rotation"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 33
    iget-object v1, p0, Laic;->a:Laib;

    invoke-static {v1}, Laib;->a(Laib;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Laic;->a:Laib;

    invoke-virtual {v0}, Laib;->a()Z

    .line 43
    iget-object v0, p0, Laic;->a:Laib;

    iget-object v0, v0, Laib;->e:Lahq;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Laic;->a:Laib;

    iget-boolean v0, v0, Laib;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 45
    :goto_0
    iget-object v1, p0, Laic;->a:Laib;

    iget-object v1, v1, Laib;->e:Lahq;

    iget-object v2, p0, Laic;->a:Laib;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 47
    :cond_0
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
