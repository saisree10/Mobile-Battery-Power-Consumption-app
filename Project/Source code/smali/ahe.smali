.class Lahe;
.super Landroid/database/ContentObserver;
.source "AirplaneCommand.java"


# instance fields
.field final synthetic a:Lahd;


# direct methods
.method public constructor <init>(Lahd;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lahe;->a:Lahd;

    .line 43
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lahe;->a:Lahd;

    invoke-static {v1}, Lahd;->a(Lahd;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lahe;->a:Lahd;

    iget-object v0, v0, Lahd;->e:Lahq;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lahe;->a:Lahd;

    invoke-virtual {v0}, Lahd;->a()Z

    .line 59
    iget-object v0, p0, Lahe;->a:Lahd;

    iget-boolean v0, v0, Lahd;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 60
    :goto_0
    iget-object v1, p0, Lahe;->a:Lahd;

    iget-object v1, v1, Lahd;->e:Lahq;

    iget-object v2, p0, Lahe;->a:Lahd;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 64
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
