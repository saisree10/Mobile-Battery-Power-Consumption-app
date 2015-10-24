.class Lqq;
.super Lmc;
.source "ToolboxListGoldActivity.java"


# instance fields
.field final synthetic a:Lqp;


# direct methods
.method constructor <init>(Lqp;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lqq;->a:Lqp;

    invoke-direct {p0}, Lmc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const-string v0, "22"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lqq;->a:Lqp;

    iget-object v0, v0, Lqp;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 32
    :cond_0
    return-void
.end method
