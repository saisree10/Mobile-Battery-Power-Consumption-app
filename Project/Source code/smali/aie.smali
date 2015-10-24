.class Laie;
.super Landroid/database/ContentObserver;
.source "ScreenTimeOutCommand.java"


# instance fields
.field final synthetic a:Laid;


# direct methods
.method public constructor <init>(Laid;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Laie;->a:Laid;

    .line 56
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "screen_off_timeout"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 61
    iget-object v1, p0, Laie;->a:Laid;

    invoke-static {v1}, Laid;->a(Laid;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Laie;->a:Laid;

    invoke-virtual {v0}, Laid;->b()Ljava/lang/String;

    .line 71
    iget-object v0, p0, Laie;->a:Laid;

    invoke-static {v0}, Laid;->b(Laid;)Lahq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Laie;->a:Laid;

    invoke-static {v0}, Laid;->b(Laid;)Lahq;

    move-result-object v0

    iget-object v1, p0, Laie;->a:Laid;

    iget-object v2, p0, Laie;->a:Laid;

    invoke-static {v2}, Laid;->c(Laid;)I

    move-result v2

    iget-object v3, p0, Laie;->a:Laid;

    invoke-virtual {v3}, Laid;->g()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lahq;->a(Lahp;II)V

    .line 75
    :cond_0
    return-void
.end method
