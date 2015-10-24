.class public Laky;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AppListActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AppListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Laky;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Laky;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->onBackPressed()V

    .line 88
    return-void
.end method
