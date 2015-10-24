.class Lags;
.super Ljava/lang/Object;
.source "BaseCoinPurchaseHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lagp;


# direct methods
.method constructor <init>(Lagp;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lags;->a:Lagp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lags;->a:Lagp;

    invoke-static {v0}, Lagp;->c(Lagp;)Lbat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lags;->a:Lagp;

    invoke-static {v0}, Lagp;->c(Lagp;)Lbat;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbat;->a(Z)Z

    .line 341
    iget-object v0, p0, Lags;->a:Lagp;

    invoke-static {v0, v2}, Lagp;->a(Lagp;Lbat;)Lbat;

    .line 343
    :cond_0
    iget-object v0, p0, Lags;->a:Lagp;

    invoke-static {v0}, Lagp;->d(Lagp;)Lbat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lags;->a:Lagp;

    invoke-static {v0}, Lagp;->d(Lagp;)Lbat;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbat;->a(Z)Z

    .line 345
    iget-object v0, p0, Lags;->a:Lagp;

    invoke-static {v0, v2}, Lagp;->b(Lagp;Lbat;)Lbat;

    .line 347
    :cond_1
    return-void
.end method
