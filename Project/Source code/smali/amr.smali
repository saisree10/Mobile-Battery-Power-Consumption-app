.class public Lamr;
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
    .line 310
    iput-object p1, p0, Lamr;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lamr;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Lauu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lamr;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Lauu;

    move-result-object v0

    invoke-virtual {v0}, Lauu;->dismiss()V

    .line 317
    :cond_0
    return-void
.end method
