.class Lauh;
.super Ljava/lang/Object;
.source "CoinBalanceBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laug;


# direct methods
.method constructor <init>(Laug;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lauh;->a:Laug;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lauh;->a:Laug;

    invoke-virtual {v0}, Laug;->b()V

    .line 29
    return-void
.end method
