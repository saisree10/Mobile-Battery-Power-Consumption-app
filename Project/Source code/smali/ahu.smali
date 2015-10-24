.class Lahu;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackCommand.java"


# instance fields
.field final synthetic a:Laht;


# direct methods
.method public constructor <init>(Laht;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lahu;->a:Laht;

    .line 37
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 41
    const-string v0, "haptic_feedback_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lahu;->a:Laht;

    invoke-static {v1}, Laht;->a(Laht;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    return-void
.end method

.method public onChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lahu;->a:Laht;

    invoke-static {v0}, Laht;->b(Laht;)Lahq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lahu;->a:Laht;

    invoke-virtual {v0}, Laht;->a()Z

    .line 53
    iget-object v0, p0, Lahu;->a:Laht;

    iget-boolean v0, v0, Laht;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 54
    :goto_0
    iget-object v1, p0, Lahu;->a:Laht;

    invoke-static {v1}, Laht;->b(Laht;)Lahq;

    move-result-object v1

    iget-object v2, p0, Lahu;->a:Laht;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 58
    :cond_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
