.class Lalm;
.super Ljava/lang/Object;
.source "AppWhiteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lall;


# direct methods
.method constructor <init>(Lall;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lalm;->a:Lall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lalm;->a:Lall;

    iget-object v0, v0, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Lalj;

    move-result-object v0

    iget-object v1, p0, Lalm;->a:Lall;

    iget-object v1, v1, Lall;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lalj;->a(Ljava/util/ArrayList;)V

    .line 146
    return-void
.end method
