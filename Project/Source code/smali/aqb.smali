.class public Laqb;
.super Ljava/lang/Object;
.source "OperationConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Laqb;->c:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iput-object p2, p0, Laqb;->a:Ljava/lang/String;

    iput p3, p0, Laqb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Laqb;->c:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->e(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Laet;

    move-result-object v0

    iget-object v1, p0, Laqb;->a:Ljava/lang/String;

    iget v2, p0, Laqb;->b:I

    invoke-interface {v0, v1, v2}, Laet;->a(Ljava/lang/String;I)V

    .line 401
    return-void
.end method
