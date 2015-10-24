.class Lahm;
.super Landroid/database/ContentObserver;
.source "BrightnessCommand.java"


# instance fields
.field final synthetic a:Lahl;


# direct methods
.method public constructor <init>(Lahl;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lahm;->a:Lahl;

    .line 86
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 87
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lahm;->a:Lahl;

    invoke-static {v1}, Lahl;->a(Lahl;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lahm;->a:Lahl;

    invoke-static {v1}, Lahl;->a(Lahl;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lahm;->a:Lahl;

    invoke-static {v0}, Lahl;->b(Lahl;)V

    .line 105
    iget-object v0, p0, Lahm;->a:Lahl;

    iget-object v0, v0, Lahl;->e:Lahq;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lahm;->a:Lahl;

    iget-object v0, v0, Lahl;->e:Lahq;

    iget-object v1, p0, Lahm;->a:Lahl;

    iget-object v2, p0, Lahm;->a:Lahl;

    invoke-static {v2}, Lahl;->c(Lahl;)I

    move-result v2

    iget-object v3, p0, Lahm;->a:Lahl;

    invoke-virtual {v3}, Lahl;->g()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lahq;->a(Lahp;II)V

    .line 107
    :cond_0
    return-void
.end method
