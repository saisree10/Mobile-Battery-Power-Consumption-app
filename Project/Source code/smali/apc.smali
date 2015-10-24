.class final Lapc;
.super Ljava/lang/Object;
.source "SettingsControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(IZLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lapc;->a:I

    iput-boolean p2, p0, Lapc;->b:Z

    iput-object p3, p0, Lapc;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings put global airplane_mode_on "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lapc;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " && am broadcast -a android.intent.action.AIRPLANE_MODE --ez state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lapc;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lbag;->a(Ljava/lang/String;)Z

    move-result v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lapc;->c:Landroid/content/Context;

    invoke-static {v0}, Lapb;->a(Landroid/content/Context;)V

    .line 73
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lapc;->c:Landroid/content/Context;

    iget-boolean v3, p0, Lapc;->b:Z

    if-nez v3, :cond_2

    :goto_2
    iget-object v2, p0, Lapc;->c:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a019e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapf;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
