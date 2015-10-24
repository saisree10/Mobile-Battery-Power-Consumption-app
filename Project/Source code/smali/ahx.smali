.class Lahx;
.super Landroid/database/ContentObserver;
.source "MobileDataCommand.java"


# instance fields
.field final synthetic a:Lahv;


# direct methods
.method public constructor <init>(Lahv;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lahx;->a:Lahv;

    .line 62
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 66
    const-string v0, "gprs_connection_sim_setting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lahx;->a:Lahv;

    invoke-static {v1}, Lahv;->a(Lahv;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lahx;->a:Lahv;

    invoke-virtual {v0}, Lahv;->a()Z

    .line 77
    iget-object v0, p0, Lahx;->a:Lahv;

    iget-object v0, v0, Lahv;->e:Lahq;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lahx;->a:Lahv;

    iget-boolean v0, v0, Lahv;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 79
    :goto_0
    iget-object v1, p0, Lahx;->a:Lahv;

    iget-object v1, v1, Lahv;->e:Lahq;

    iget-object v2, p0, Lahx;->a:Lahv;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 81
    :cond_0
    return-void

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
