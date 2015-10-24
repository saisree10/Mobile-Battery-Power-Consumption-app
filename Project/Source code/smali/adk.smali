.class Ladk;
.super Ljava/lang/Object;
.source "BatteryFaceBookDialog.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Ladi;


# direct methods
.method constructor <init>(Ladi;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Ladk;->a:Ladi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    if-eqz p1, :cond_1

    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v0}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Ladk;->a:Ladi;

    invoke-static {v0, p1}, Ladi;->a(Ladi;Lcom/facebook/Session;)Lcom/facebook/Session;

    .line 48
    iget-object v0, p0, Ladk;->a:Ladi;

    iget-object v1, p0, Ladk;->a:Ladi;

    invoke-static {v1}, Ladi;->a(Ladi;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Ladk;->a:Ladi;

    invoke-static {v2}, Ladi;->b(Ladi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Ladi;->a(Ladi;Lcom/facebook/Session;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-object v0, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v0}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Ladk;->a:Ladi;

    invoke-static {v0}, Ladi;->c(Ladi;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02b8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
