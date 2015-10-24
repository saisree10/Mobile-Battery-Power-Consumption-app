.class Lald;
.super Ljava/lang/Object;
.source "AppListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lalc;


# direct methods
.method constructor <init>(Lalc;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lald;->a:Lalc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lald;->a:Lalc;

    iget-object v0, v0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->b(Lcom/dianxinos/powermanager/menu/AppListActivity;)Lala;

    move-result-object v0

    iget-object v1, p0, Lald;->a:Lalc;

    iget-object v1, v1, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/menu/AppListActivity;->a(Lcom/dianxinos/powermanager/menu/AppListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lala;->a(Ljava/util/ArrayList;)V

    .line 121
    return-void
.end method
