.class Lagr;
.super Ljava/lang/Object;
.source "BaseCoinPurchaseHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lagp;


# direct methods
.method constructor <init>(Lagp;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lagr;->a:Lagp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lagr;->a:Lagp;

    invoke-virtual {v0}, Lagp;->b()V

    .line 110
    return-void
.end method
