.class public Lapq;
.super Ljava/lang/Object;
.source "OperationConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laev;

.field final synthetic b:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Laev;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lapq;->b:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iput-object p2, p0, Lapq;->a:Laev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    iget-object v1, p0, Lapq;->a:Laev;

    invoke-virtual {v0, v1}, Laoj;->a(Laev;)V

    .line 505
    return-void
.end method
