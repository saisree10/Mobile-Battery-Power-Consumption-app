.class public Lalh;
.super Ljava/lang/Object;
.source "AppWhiteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lalh;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lalh;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    const-class v2, Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    iget-object v1, p0, Lalh;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
