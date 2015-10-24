.class public Lapx;
.super Ljava/lang/Object;
.source "OperationConfigActivity.java"

# interfaces
.implements Lara;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lapx;->b:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iput-object p2, p0, Lapx;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 269
    if-lez p1, :cond_0

    iget-object v0, p0, Lapx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 270
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lapy;

    invoke-direct {v1, p0, p1}, Lapy;-><init>(Lapx;I)V

    invoke-virtual {v0, v1}, Lazi;->b(Ljava/lang/Runnable;)V

    .line 278
    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 286
    return-void
.end method
