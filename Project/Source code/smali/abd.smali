.class public Labd;
.super Ljava/lang/Object;
.source "PowerMgrInfoAcitvity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrInfoAcitvity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrInfoAcitvity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Labd;->a:Lcom/dianxinos/powermanager/PowerMgrInfoAcitvity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Labd;->a:Lcom/dianxinos/powermanager/PowerMgrInfoAcitvity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMgrInfoAcitvity;->onBackPressed()V

    .line 45
    return-void
.end method
