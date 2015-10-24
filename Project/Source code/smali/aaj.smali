.class public Laaj;
.super Ljava/lang/Object;
.source "BoosterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/BoosterActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/BoosterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Laaj;->a:Lcom/dianxinos/powermanager/BoosterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Laaj;->a:Lcom/dianxinos/powermanager/BoosterActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/BoosterActivity;->finish()V

    .line 31
    return-void
.end method
