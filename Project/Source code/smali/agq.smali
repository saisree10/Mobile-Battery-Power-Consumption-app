.class Lagq;
.super Ljava/lang/Object;
.source "BaseCoinPurchaseHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lagp;


# direct methods
.method constructor <init>(Lagp;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lagq;->b:Lagp;

    iput p2, p0, Lagq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lagq;->b:Lagp;

    iget-object v0, v0, Lagp;->a:Landroid/content/Context;

    const-string v1, "ndpcc"

    const/4 v2, 0x1

    iget v3, p0, Lagq;->a:I

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;II)V

    .line 71
    iget-object v0, p0, Lagq;->b:Lagp;

    invoke-virtual {v0}, Lagp;->a()V

    .line 72
    return-void
.end method
