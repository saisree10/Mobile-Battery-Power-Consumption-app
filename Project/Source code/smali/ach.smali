.class public Lach;
.super Ljava/lang/Object;
.source "UserTipsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/UserTipsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/UserTipsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lach;->a:Lcom/dianxinos/powermanager/UserTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lach;->a:Lcom/dianxinos/powermanager/UserTipsActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/UserTipsActivity;->onBackPressed()V

    .line 84
    return-void
.end method
