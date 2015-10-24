.class Laho;
.super Landroid/database/ContentObserver;
.source "CleanupCommand.java"


# instance fields
.field final synthetic a:Lahn;


# direct methods
.method public constructor <init>(Lahn;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Laho;->a:Lahn;

    .line 40
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "com.dianxinos.dxbs.auto_cleanup"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    iget-object v1, p0, Laho;->a:Lahn;

    invoke-static {v1}, Lahn;->a(Lahn;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 46
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Laho;->a:Lahn;

    iget-object v0, v0, Lahn;->e:Lahq;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Laho;->a:Lahn;

    invoke-virtual {v0}, Lahn;->a()Z

    .line 56
    iget-object v0, p0, Laho;->a:Lahn;

    iget-boolean v0, v0, Lahn;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 57
    :goto_0
    iget-object v1, p0, Laho;->a:Lahn;

    iget-object v1, v1, Lahn;->e:Lahq;

    iget-object v2, p0, Laho;->a:Lahn;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 61
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
