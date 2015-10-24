.class public Lapr;
.super Ljava/lang/Object;
.source "OperationConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lapr;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 721
    iget-object v0, p0, Lapr;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const-string v1, "ssc"

    const-string v2, "ssoc"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 725
    return-void
.end method
