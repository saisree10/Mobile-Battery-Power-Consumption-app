.class public Labn;
.super Ljava/lang/Object;
.source "PowerMgrTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 923
    iput-object p1, p0, Labn;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 926
    iget-object v0, p0, Labn;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->s(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/powermanager/ui/MainTitle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonClickable(Z)V

    .line 928
    iget-object v0, p0, Labn;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lzc;->a(Landroid/content/Context;)Z

    move-result v0

    .line 929
    iget-object v1, p0, Labn;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-string v2, "msgbox"

    if-eqz v0, :cond_0

    const-string v0, "mbmtnc"

    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 934
    iget-object v0, p0, Labn;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v4}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b(Lcom/dianxinos/powermanager/PowerMgrTabActivity;I)V

    .line 935
    return-void

    .line 929
    :cond_0
    const-string v0, "mbmtnoc"

    goto :goto_0
.end method
