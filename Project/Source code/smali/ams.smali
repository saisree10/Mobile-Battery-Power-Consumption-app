.class public Lams;
.super Ljava/lang/Object;
.source "ModeMgrActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lams;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 326
    iget-object v0, p0, Lams;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Lauu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lams;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0, v3}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;Z)Z

    .line 329
    iget-object v0, p0, Lams;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    iget-object v1, p0, Lams;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->b(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;I)V

    .line 330
    iget-object v0, p0, Lams;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Lauu;

    move-result-object v0

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 333
    iget-object v0, p0, Lams;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    const-string v1, "mode"

    const-string v2, "s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 338
    :cond_0
    return-void
.end method
