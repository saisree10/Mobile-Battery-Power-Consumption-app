.class public Lari;
.super Ljava/lang/Object;
.source "CpuSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/CpuSelectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lari;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lari;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    const-class v2, Lcom/dianxinos/powermanager/menu/RootHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    iget-object v1, p0, Lari;->a:Lcom/dianxinos/powermanager/smart/CpuSelectDialog;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/smart/CpuSelectDialog;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method
