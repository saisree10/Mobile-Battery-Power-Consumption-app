.class Lale;
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
    .line 183
    iput-object p1, p0, Lale;->a:Lalc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lale;->a:Lalc;

    iget-object v0, v0, Lalc;->a:Lcom/dianxinos/powermanager/menu/AppListActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/menu/AppListActivity;->e(Lcom/dianxinos/powermanager/menu/AppListActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a012f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    return-void
.end method
