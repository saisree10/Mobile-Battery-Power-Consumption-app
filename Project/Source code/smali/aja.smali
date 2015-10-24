.class Laja;
.super Ljava/lang/Object;
.source "CpuOpt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laiy;


# direct methods
.method constructor <init>(Laiy;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Laja;->a:Laiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laja;->a:Laiy;

    iget-object v1, v1, Laiy;->c:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/powermanager/menu/RootHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    iget-object v1, p0, Laja;->a:Laiy;

    iget-object v1, v1, Laiy;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
