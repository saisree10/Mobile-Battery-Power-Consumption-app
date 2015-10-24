.class Lapy;
.super Ljava/lang/Object;
.source "OperationConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lapx;


# direct methods
.method constructor <init>(Lapx;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lapy;->b:Lapx;

    iput p2, p0, Lapy;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lapy;->b:Lapx;

    iget-object v1, v0, Lapx;->b:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iget-object v0, p0, Lapy;->b:Lapx;

    iget-object v0, v0, Lapx;->a:Ljava/util/ArrayList;

    iget v2, p0, Lapy;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laon;

    invoke-static {v1, v0}, Lbal;->a(Landroid/content/Context;Laon;)V

    .line 275
    return-void
.end method
