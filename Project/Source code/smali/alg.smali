.class public Lalg;
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
    .line 95
    iput-object p1, p0, Lalg;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lalg;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->onBackPressed()V

    .line 99
    return-void
.end method
