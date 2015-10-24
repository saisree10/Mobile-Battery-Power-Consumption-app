.class public Lyr;
.super Ljava/lang/Object;
.source "MessageBoxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lyr;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lyr;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/dianxinos/common/coins/CoinManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    .line 207
    return-void
.end method
