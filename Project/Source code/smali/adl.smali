.class Ladl;
.super Ljava/lang/Object;
.source "BatteryFaceBookDialog.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic a:Lcom/facebook/Session;

.field final synthetic b:Ladi;


# direct methods
.method constructor <init>(Ladi;Lcom/facebook/Session;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Ladl;->b:Ladi;

    iput-object p2, p0, Ladl;->a:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Ladl;->b:Ladi;

    invoke-virtual {v0}, Ladi;->b()V

    .line 122
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Ladl;->b:Ladi;

    invoke-virtual {v0}, Ladi;->dismiss()V

    .line 124
    iget-object v0, p0, Ladl;->b:Ladi;

    invoke-static {v0}, Ladi;->c(Ladi;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02b7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 132
    :goto_0
    iget-object v0, p0, Ladl;->a:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 133
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Ladl;->b:Ladi;

    invoke-static {v0}, Ladi;->c(Ladi;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02b8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
